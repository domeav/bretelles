\version "2.22"

\include "swing.ly"

\header {
  title = "Jimmy"
  composer = "Moriarty"
}

#(set-global-staff-size 18)

melody = \relative {
  \key a \minor
  \time 4/4
  \tempo 4 = 120
  \tripletFeel 8
  { e'8 e4. r4 d8 c | << { d e4 c4. } { b'8 b4 g4. } >> c,8 c | << { d8 d4 d4. } { f8 f4 a4. } >> c,8 a | << { c a c4 a4 } { e'8 e g4 e } >> r4 |
    e4 d4 c4 c | << { d8 e4 e4. } { b'8 b4 g4. } >> c,8 c | << { d8 d4 d4. } { f8 f4 a4. } >> c,8 a | << { c c4. c4 } { e8 e g4 e } >> r4 |
    a8 a4 e4. d8 c | g'8 g4 e4. d8 c | d4 d4 d4. c8 | c a4 a4. r2
  }
}


chordz = \chords { a1:m | c | g | f |
		   a1:m | c | g | f |
		   a1:m | c | g | f |
		 }


\score {
  <<
    \new ChordNames \chordz
    \new Staff \melody
    \addlyrics {
      Ji -- mmy won't you please come home
      Where the grass is green and the buf -- fa -- loes roam
      Come see Jimmy your un -- cle Jim and your aun -- tie Jim and your cou -- sin Jim
      Come home Jimmy 'cause you need a bath and your grand -- pa Jimmy is still gone daft
    }
  >>
}
\score {
  \unfoldRepeats
  <<
%    \new ChordNames \chordz
    \new Staff \melody
  >>
  \midi { }
}

