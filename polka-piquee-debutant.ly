\version "2.22"

\header {
  title = "Polka piquée du débutant"
}

melody = \relative {
  \key g \major
  \time 2/4
  \tempo 4 = 108
  \repeat volta 2
  { d'8 g b4 | a8 g a4 | d,8 fis a c | } \alternative { { b a b g } { b a g4 } }
  \repeat volta 2
  { d'4 b | g8 b a4 | c4 a | } \alternative  { { fis8 a b4 } {fis8 a g4 } }
}

chordz = \chords { \repeat volta 2 { g2 | d | s |} \alternative { { g } { g } }
		   \repeat volta 2 { g | g4 d | d2 |} \alternative { { d4 g } { d4 g } }
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

