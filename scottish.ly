\version "2.22"

\header {
  title = "Scottish"
}

melody = \relative {
  \key g \major
  \time 2/4
  \tempo 2 = 80
  \repeat volta 2
  { d''4 d8 d | b g b d | b g  b d | d c a fis | d'4 d8 d | b g b d | d c a fis | g2 }
  \repeat volta 2
  { b4 b8 g | e2 | c'4 c8 a | fis2 | d'4 d8 d | b g b d | d c a fis | g2 }
}

chordz = \chords { \repeat volta 2 { g2 | s | s | d | g | s | d | g }
		   \repeat volta 2 { g | e:m | a:m | d | g | s | d | g }
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

