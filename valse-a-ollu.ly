\version "2.22"

\header {
  title = "Valse à Ollu"
  composer = "Alain Ollu"
}

melody = \relative {
  \key c \major
  \time 3/4
  \tempo 2. = 60
  \repeat volta 2
  { a'8 b c d e f | e4 d c | d8 g, b d e g | e4 d b 
    a8 b c d e f  | e4 d c | d8 g, b d e d | c4 b g }
  \repeat volta 4
  { a4. b8 c4 | a4. b8 c4 | b4. c8 d4 | c b g \mark "D.C." }
}

chordz = \chords {
  \repeat volta 2 { a2.:m f g e:m | a2.:m f g e:m | }
  \repeat volta 4 {a2.:m f g e:m }  }


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

