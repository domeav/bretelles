#!/usr/bin/env python3
"""Build a single-page static site from the song folders.

Every top-level folder starting with an uppercase letter is a song. Published
files are hard-linked (or copied) into the output dir, sources are left out.
A `titre.txt` in a song folder overrides the title derived from its name.

Usage: python3 build.py [output_dir]   (default: public/)
"""
import html
import os
import re
import shutil
import sys
from pathlib import Path
from urllib.parse import quote

ROOT = Path(__file__).resolve().parent
OUT = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "public"

SITE_TITLE = "la chorale des Bretelles !"
INTRO = 'Venez causer sur <a href="https://discord.gg/V4EhgGk5BM">le discord de la chorale</a>.'

DOCS = {".pdf", ".jpg", ".jpeg", ".png"}
AUDIO = {".mp3"}
VIDEO = {".mp4"}
VOICE_ORDER = ["partition", "paroles", "soprano", "sop", "alto", "tenor", "ten", "bass", "basse", "basso"]


def title_of(folder):
    override = folder / "titre.txt"
    if override.exists():
        return override.read_text(encoding="utf-8").strip()
    return re.sub(r"(?<=[a-zà-ÿ])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])", " ", folder.name)


def label_of(song, path):
    stem = path.stem
    if stem == song:
        return "partition" if path.suffix == ".pdf" else "tutti"
    return stem.removeprefix(song).strip("-_ ") or stem


def sort_key(song, path):
    label = label_of(song, path).lower()
    rank = VOICE_ORDER.index(label) if label in VOICE_ORDER else len(VOICE_ORDER)
    return (label == "tutti", rank, label)


def publish(src, dst):
    dst.parent.mkdir(parents=True, exist_ok=True)
    try:
        os.link(src, dst)
    except OSError:
        shutil.copy2(src, dst)


def song_section(folder):
    song = folder.name
    files = sorted((f for f in folder.iterdir() if f.is_file()), key=lambda f: sort_key(song, f))
    docs = [f for f in files if f.suffix.lower() in DOCS]
    media = [f for f in files if f.suffix.lower() in AUDIO | VIDEO]
    if not docs and not media:
        return None

    parts = [f'<section id="{quote(song)}"><h2><a href="#{quote(song)}">{html.escape(title_of(folder))}</a></h2>']
    if docs:
        links = " · ".join(
            f'<a href="{quote(f"{song}/{f.name}")}">{html.escape(label_of(song, f))}</a>' for f in docs
        )
        parts.append(f'<p class="docs">{links}</p>')
    for f in media:
        publish(f, OUT / song / f.name)
        tag = "video" if f.suffix.lower() in VIDEO else "audio"
        parts.append(
            f'<div class="track"><span>{html.escape(label_of(song, f))}</span>'
            f'<{tag} controls preload="none" src="{quote(f"{song}/{f.name}")}"></{tag}></div>'
        )
    for f in docs:
        publish(f, OUT / song / f.name)
    parts.append("</section>")
    return "\n".join(parts)


PAGE = """<!doctype html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title}</title>
<style>
  :root {{ --bg: #fff; --fg: #222; --muted: #666; --accent: #b0306a; --line: #e4e4e4; }}
  @media (prefers-color-scheme: dark) {{
    :root {{ --bg: #1b1b1d; --fg: #e8e8e8; --muted: #999; --accent: #f07bb0; --line: #333; }}
  }}
  body {{ background: var(--bg); color: var(--fg); font: 16px/1.5 system-ui, sans-serif;
         max-width: 46rem; margin: 0 auto; padding: 1rem; }}
  a {{ color: var(--accent); }}
  h2 a {{ color: inherit; text-decoration: none; }}
  #filter {{ width: 100%; box-sizing: border-box; padding: .5rem; font: inherit;
            background: var(--bg); color: var(--fg); border: 1px solid var(--line); border-radius: 6px; }}
  section {{ border-top: 1px solid var(--line); padding: .5rem 0 1rem; }}
  h2 {{ margin: .5rem 0; font-size: 1.25rem; }}
  .docs {{ margin: .25rem 0 .5rem; }}
  .track {{ display: flex; align-items: center; gap: .75rem; margin: .25rem 0; }}
  .track span {{ min-width: 6rem; color: var(--muted); }}
  .track audio, .track video {{ flex: 1; min-width: 0; max-width: 100%; }}
  @media (max-width: 30rem) {{ .track {{ flex-direction: column; align-items: stretch; gap: 0; }} }}
</style>
</head>
<body>
<h1>{title}</h1>
<p>{intro}</p>
<input id="filter" type="search" placeholder="Chercher un chant…" autocomplete="off">
{sections}
<script>
  // Filter songs by title; pause other players when one starts.
  const norm = s => s.normalize("NFD").replace(/[\\u0300-\\u036f]/g, "").toLowerCase();
  document.getElementById("filter").addEventListener("input", e => {{
    const q = norm(e.target.value);
    for (const s of document.querySelectorAll("section"))
      s.hidden = !norm(s.querySelector("h2").textContent).includes(q);
  }});
  document.addEventListener("play", e => {{
    for (const m of document.querySelectorAll("audio, video")) if (m !== e.target) m.pause();
  }}, true);
</script>
</body>
</html>
"""


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)
    folders = sorted(
        (d for d in ROOT.iterdir() if d.is_dir() and d.name[0].isupper()),
        key=lambda d: title_of(d).casefold(),
    )
    sections = [s for s in map(song_section, folders) if s]
    (OUT / "index.html").write_text(
        PAGE.format(title=SITE_TITLE, intro=INTRO, sections="\n".join(sections)), encoding="utf-8"
    )
    print(f"{len(sections)} songs -> {OUT / 'index.html'}")


if __name__ == "__main__":
    main()
