\version "2.22"

\include "swing.ly"

\header {
  title = "Jimmy"
  composer = "Moriarty"
}

%#(set-global-staff-size 18)

vOne = { \set midiInstrument = #"harmonica" \voiceOne }
vTwo = { \voiceTwo}

melody = \relative {
  \key a \minor
  \time 4/4
  \tempo 4 = 120
  { \oneVoice e'8 e4. r4 d8 c | d e4 c4. c8 c | << \new Voice { \vTwo d8 d4 d4. c8 a | c c c4 a4 }
						   \new Voice { \vOne g'8 g4 g4. g8 g | a a a4 e4 } >>  \oneVoice r4 |
    e4 d4 c4 c | d8 e4 e4. c8 c | << \new Voice { \vTwo d8 d4 d4. c8 a | c c4. c4 }
				     \new Voice { \vOne g'8 g4 g4. g8 g | e e4. e4 } >> \oneVoice r4 |
    a8 a4 e4. d8 c | g'8 g4 e4. d8 c | << \new Voice { \vTwo d4 d d4. c8 | c a4 a4. }
					  \new Voice { \vOne g'4 g g4. g8 | a a4 c4. } >> \oneVoice r8 a, \bar ":|]"
  }
  { e'8 e e4 d c | d4.( c4.) << \new Voice { \vTwo c4 | d4. d4. e4 | c2 }
				\new Voice { \vOne g'4   | g4. g4. g4 | a2 } >> \oneVoice r4. a,8 |
    e'8 e e4 d c | d4.( c4.) << \new Voice { \vTwo r4 | b4. b4. c4 | b8 a4. }
				\new Voice { \vOne s4 | g'4. g4. g4 | g8 a4. } >> \oneVoice r4. a,8 |
    e'8 e e4 d c | d4.( c4.) << \new Voice { \vTwo r4 | d4. d4. c4 | e2 }
				\new Voice { \vOne r4 | g4. g4. g4 | a2 } >> \oneVoice r4. a,8 |
    e'8 e e4 d c | d4.( c4.) << \new Voice { \vTwo r4 | b4. b4. c4 | b8( a4.) }
				\new Voice { \vOne s4 | g'4. g4. g4 | g8 a4. } >> \oneVoice r2 \bar ":|]"
  }
  { << \new Voice { \vOne a4 a c c | c2. r4 | b8 b b4 b c | b8 a4. a2 | a4 a c c | c2. r4 | b8 b b4 b c | b8 a4. a2}
       \new Voice { \vTwo e4 e d c | d4.( c4.) r4 | g'8 g g4 g f | e8 e4. e2 | e4 e d c | d4.( c4.) r4 | g'8 g g4 g f | e8 e4. e2 } >>
  }
}

bass = \relative {
  \clef "bass"
  { a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e c e4. r4 |
    a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e c e4. r4 |
    a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e d c4. r4 | }
  { r1 | f4. e8 f e4. | b2 r2 | r2 a8 b c4 |
    r1 | f4. e8 f e4. | d2 r2 | r2 c8 d e4 |
    r1 | f4. e8 f e4. | b2 r2 | r2 a8 b c4 |
    r1 | f4. e8 f e4. | d2 r2 | e8 e d4 c8 b4. | 
    r2 e2 | f2 r2 | d2 g,2 | a2 r2
    r2 e'2 | f2 r2 | d2 g,2 | a2 r2 }
}


chordz = \chords { a1:m | c | g | f |
		   a1:m | c | g | f |
		   a1:m | c | g | f |
		   a1:m | f | g | a:m |
		   a1:m | f | g | a:m |
		   a1:m | f | g | a:m |
		   a1:m | f | g | a:m |
		   a1:m | f | g | a:m |
		   a1:m | f | g | a:m |
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

      The Buf -- fa -- loes used to say __ be proud of your name
      The Buf -- fa -- loes used to say __ be what you a -- re
      The Buf -- fa -- loes used to say __ roam where you roam
      The Buf -- fa -- loes used to say __ do what you do __
    }
    \new Staff \bass
    \addlyrics {
      Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy buf -- fa -- lo roam Ji -- mmy Ji -- mmy don't, for -- get your name
      Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy buf -- fa -- lo roam Ji -- mmy Ji -- mmy don't, for -- get your name
      Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy ba -- by come home Ji -- mmy Ji -- mmy sing_the buf -- fa -- lo song
      Buf -- falos used to say Ji -- mmy please
      Don't for -- get your name you're so young
      Buf -- falos used to say Ji -- mmy please
      Don't for -- get your name be back home Jim -- my
      }
  >>
}
\score {
  \unfoldRepeats
  \tripletFeel 8
  <<
%    \new ChordNames \chordz
    \new Staff { \set Staff.midiInstrument = #"vibraphone"
		 \melody }
    \new Staff { \set Staff.midiInstrument = #"acoustic bass"
		 \bass }
  >>
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}
\markup {
  \fill-line {
    \hspace #1
    \column {
      \line { 1. Jimmy won't you please come home }
      \line { Where the grass is green and the buffaloes roam }
      \line { Come see Jimmy your uncle Jim }
      \line { Your auntie Jimmie and your cousin Jim }
      \line { Come home Jimmy because you need a bath }
      \line { And your grandpa Jimmy is still gone daft }
      \line { -- }
      \line { Now there's buffalo Jim and buffalo Jim }
      \line { And Jim buffalo now didn't you know }
      \line { Jim Jim Jimmy its your last cigarette }
      \line { But there's buffalo piss and it's all kind of wet }
      \line { Jambo Jimmy you'd better hold your nose }
      \line { All roads lead to roam with the buffaloes }
    }
    \hspace #2
    \column {
      \line { 2. Well you've gotta have a wash }
      \line { "                " but you can't clean your name }
      \line { You're now called Jimmy }
      \line { "                " you'll be Jimmy just the same }
      \line { The keys are in a bag in a chest by the door }
      \line { One of Jimmy's friends has taken the floor }
      \line { Jimmy won't you please come home }
      \line { Where the grass is green and the buffaloes roam }
      \line { Dear old Jimmy you've forgotten you're young }
      \line { But you can't ignore the buffalo song }
    }
    \hspace #1
  }
}

