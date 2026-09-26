\version "2.22"

\header {
  title = "Emily"
  composer = "Les Têtes Raides"
}

melody = \relative {
  \key c \major
  \time 3/4
  \tempo 2. = 80
  \partial 2 c'4 d |
  \repeat volta 2 { e2. | e2 c'4  | e,2.  | e2 f4 | d2. | d2 c4 | d2.
  d4 a b | c2. | c2 d4 | c2. | c4 b a | b2. | b2 c4 | b2.
  b4 c d | e2. | e2 c'4 | e,2. | e2 f4  | d2. | d2 c4 | d2.
  d4 a b | c2. | c2 d4 | c2. | c4 b a | b2. | b2 c4 | b2. | r4 c d }
}

chordz = \chords {
  \partial 2 s2
  \repeat volta 2 
  { a2.:m s s s d:m s s s a:m s s s e s s s a:m s s s d:m s s s a:m s s s e s s s }
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
  \transpose ees c'
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

