\version "2.22"

\header {
  title = "Un dimanche à Brangoulo"
  composer = "dom"
}

melody = \relative {
  \key g \major
  \time 3/4
  \tempo 2. = 80
  \repeat volta 2
  { g'4 b4. g8 | b2 g4 | (a b d) | b2 g4 |
    g4 b4. g8 | b2 g4 | (a fis d) | g2 r4 }
  \repeat volta 2
  { \time 5/4 b4 d4 d2. | e4 d4 d2. | b4 d4 d2. | }
  \alternative { { \time 3/4 c4. b8 a4 | b4. a8 g4 }
		 { \time 3/4 c d, a' | g r2 } }

}

chordz = \chords { \repeat volta 2 { g2. b2.:m/fis d2. g2. | g2. c2. d2. g2. }
		   \repeat volta 2 { g2 b2.:m/fis d2 g2. g2 c2. } \alternative { { d2. g2. } { d2. g2. } } 
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

