\version "2.22"

\header {
  title = "La ronde de Philémon"
  composer = "Lætitia Crouzet"
}

melody = \relative {
  \key c \major
  \time 6/8
  \tempo 4. = 120
  \partial 8 e'8 | \repeat volta 2
  { a4 b8 c4 r8 | c4 d8 e4 r8 | d4 c8 b4 r8 | d4 c8 b4 e,8 |
    a4 b8 c4 r8 | c4 d8 e4 r8 | d4 r8 b4 r8 | d4 r8 b4 e,8 | }
  \repeat volta 2
  { a4. r4 b8   | c4 b8 a4 c8 | b4. r4 c8   | d4 e8 d4 c8 |
    a4. r4 b8   | c4 b8 a4 c8 | b4 e8-> e4 d8-> | } \alternative { { d4 c8-> c4 b8 }
								   { d4 c8 c4 e,8 \mark "D.C." } }							       
}

chordz = \chords { \partial 8 s8
		   \repeat volta 2 { a1.:m g a:m g  }
		   \repeat volta 2 { a:m g a:m g4. g/e } \alternative { { g/d g/c } { g/d g/c } }
		 }


\score {
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
}
\markup { Bb }
\score {
  \transpose c d
  <<
    \new ChordNames \chordz
    \new Staff \melody
  >>
}
\markup { Eb }
\score {
  \transpose ees c
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

