\version "2.22"

\header {
  title = "Rondeau 869"
}

melody = \relative {
  \key g \major
  \time 6/8
  \tempo 4. = 108
  \repeat volta 2
  { g'4 b8 a4 g8 | fis4 a8 g4 g8 | g4 b8 a4 g8 | fis4 a8 g4. }
  \repeat volta 2
  { g4 a8 b4 b8 | a4 g8 fis4. | fis4 g8 a8. b16 a8 | } \alternative { { g4 a8 b4 g8 } { g4 b8 g4. } }
}

chordz = \chords { \repeat volta 2 { g4. d4 g8 | d4. g | g4. d4 g8 | d4. g4. }
		   \repeat volta 2 { g4 d8 g4. | d4 g8 d4. | d4 g8 d4. | } \alternative { { g4 d8 g4. } { g2. } }
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

