\version "2.22"

\header {
  title = "Mon amant de Saint-Jean"
  composer = "Agel/Carrara"
}

#(set-global-staff-size 18)

melody = \relative {
  \key g \minor
  \time 3/4
  \tempo 2. = 90
  \partial 2 g'4 a \bar ".|:"
  { bes bes bes | bes a g | bes2 r4 | r4 a bes | c2 r4 | r4 bes a | bes8 a g4 r4 | r4 g a |
    bes bes bes | bes a g | ees'2 r4 | c d ees | d2 c4 | bes2 a4 | g2 r4 | r2 g4 \bar "||"
    d' bes g | d' bes g | d'2 r4 | r2 d4 | ees ees ees | c d ees | d2 r4 | r2 g,4 |
    a a a | a r g | bes bes bes | bes r g | bes a bes | c bes c | d2 r4 | r2. |
    d2 r4 | bes a g | d'2 r4 | bes a g | ees' d ees | g f ees | d2 r4 | r2. |
    c2 r4 | a bes c | bes2 r4 | g a bes | a2 r4 | d, bes' a | g2 r4 | r4 g a \bar ":|."
  }
}


chordz = \chords { \partial 2 s2 |
		   { g2.:m | s | s | s | c:m | s | g:m | s
		     g:m   | s | c:m | s | d:7 | s | g:m | s
		     g:m | s | s | s | c:m | s | g:m | s | d:7 | s | g:m | s | c:m | s | d:7 | s |
		     g:m | s | s | s | c:m | s | g:m | s | d:7 | s | g:m | s | c:m | d:7 | g:m | s | }
		 }


\score {
  \transpose c d
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
}
\markup { Bb }
\score {
  \transpose c e
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
}
\markup { Eb }
\score {
  \transpose c b,
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
}
\score {
  \unfoldRepeats
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
  \midi { }
}

