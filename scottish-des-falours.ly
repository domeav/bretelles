\version "2.22"

\header {
  title = "Scottish des Falours"
  composer = "Lætitia Crouzet"
}

melody = \relative {
  \key c \major
  \time 4/4
  \tempo 2 = 86
  \repeat volta 2
  { e'4 d g2 | e4 d a'2 | b4 a b d | } \alternative { { c g g e } { c'8 g g e c4 r } }
  \repeat volta 2
  { c'8 b a-. r e4. r8 | c'8 b a-. r f4. r8 | b4 g d g | } \alternative { { e2 r } { c r }}
}

chordz = \chords { \repeat volta 2 { c1 a:m g } \alternative { { c } { c } }
		   \repeat volta 2 { a:m f g } \alternative { { c } { c } } 
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

