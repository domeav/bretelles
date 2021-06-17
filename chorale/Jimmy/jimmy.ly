\version "2.22"

\include "swing.ly"

\header {
  title = "Jimmy (v1.1)"
  composer = "Moriarty"
}


#(set-global-staff-size 18)


lead = \new Voice = "lead" {
  \time 4/4
  \tempo 4 = 124
  \relative { { e'8 e4. r4 d8 c | d e4 c4. c8 c | \stemDown d8 d4 d4. c8 a | c c c4 a4 r4 | \stemNeutral
		e'4 d4 c4 c | d8 e4 e4. c8 c | \stemDown d8 d4 d4. c8 a | c c4. c4 r4 | \stemNeutral
		a'8 a4 e4. d8 c | g'8 g4 e4. d8 c | \stemDown d4 d d4. c8 | c a4 a4. r8 \stemNeutral a \bar ":|]" \break }
	      { e'8 e e4 d c | d4.( c4.) \stemDown c4 | d4. d4. e4 | c2 r4. \stemNeutral a8 
		e'8 e e4 d c | d4.( c4.) r4 | \stemDown b4. b4. c4 | b8 a4. r4. \stemNeutral a8 
		e'8 e e4 d c | d4.( c4.) r4 | \stemDown d4. d4. c4 | e2 r4. \stemNeutral a,8 
		e'8 e e4 d c | d4.( c4.) r4 | \stemDown b4. b4. c4 | b8( a4.) r2 \bar ":|]" \stemNeutral \break }
	      { \voiceTwo e'4 e d c | d4.( c4.) r4 | g'8 g g4 g f | e8 e4 e8~e2 |
		e4 e d c | d4.( c4.) r4 | g'8 g g4 g f | e8 e4 e8~e2 \bar "|." }	      
	    }
}

backing = \new Voice = "back" {
  \voiceOne
  \relative {
    \key a \minor {
      { s1 | s1 | g'8 g4 g4. g8 g | a a a4 e4 s4 |
	s1 | s1 | g8 g4 g4. g8 g | e e4. e4 s4 |
	s1 | s1 | g4 g g4. g8 | a a4 c4. s4 | }
      { s1 | s2. g4 | g4. g4. g4 | e2 s2 |
	s1 | s1 | g4. g4. g4 | g8 a4. s2 |
	s1 | s1 | g4. g4. g4 | e2 s2 |
	s1 | s1 | g4. g4. g4 | g8 a4. s2 | }
      { a4 a c c | c2. s4 | b8 b b4 b c | b8 a4 a8~a2 |
	a4 a c c | c2. s4 | b8 b b4 b c | b8 a4 a8~a2 | }
    }
  }
}


bass = {
  \clef "bass"
  \relative {
    { a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e c e4. r4 |
      a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e c e4. r4 |
      a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e d c4. r4 | }
    { r1 | f4. e8 f e4. | b2 r2 | r2 a8 b c4 |
      r1 | f4. e8 f e4. | d2 r2 | r2 c8 d e4 |
      r1 | f4. e8 f e4. | b2 r2 | r2 a8 b c4 |
      r1 | f4. e8 f e4. | d2 r2 | e8 e d4 c8 b4. | }
    { r2 e2 | f2 r2 | d2 g,2 | a2 r2
      r2 e'2 | f2 r2 | d2 g,2 | a2 r2 |}
  }
}


chordz = \chords {
  { a1:m | c | g | f |
    a1:m | c | g | f |
    a1:m | c | g | f | }
  { a1:m | f | g | a:m |
    a1:m | f | g | a:m |
    a1:m | f | g | a:m |
    a1:m | f | g | a:m | }
  { a1:m | f | g | a:m |
    a1:m | f | g | a:m | }
}


\score {
  {
    \transpose c ees 
    <<
      \new ChordNames \chordz
      \new Staff  << \backing \lead >>
      \new Lyrics \lyricsto "lead" {
	{
	  Ji -- mmy won't you please come home
	  Where the grass is green and the buf -- fa -- loes roam
	  Come see Jimmy your un -- cle Jim and your aun -- tie Jim and your cou -- sin Jim
	  Come home Jimmy 'cause you need a bath and your grand -- pa Jimmy is still gone daft
	}
	{
	  The Buf -- fa -- loes used to say __ be proud of your name
	  The Buf -- fa -- loes used to say __ be what you a -- re
	  The Buf -- fa -- loes used to say __ roam where you roam
	  The Buf -- fa -- loes used to say __ do what you do __
	}
	{
	  (Re)mem -- ber you're un -- known __
	  Buf -- fa -- lo -- land will be your home
	  (Re)mem -- ber you're un -- known __
	  Buf -- fa -- lo -- land will be your home
	}
      }
      \new Staff  \bass
      \addlyrics {
	{
	  Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy buf -- fa -- lo roam Ji -- mmy Ji -- mmy don't, for -- get your name
	  Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy buf -- fa -- lo roam Ji -- mmy Ji -- mmy don't, for -- get your name
	  Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy ba -- by come home Ji -- mmy Ji -- mmy sing_the buf -- fa -- lo song
	}
	{
	  Buf -- falos used to say Ji -- mmy please
	  Don't for -- get your name you're so young
	  Buf -- falos used to say Ji -- mmy please
	  Don't for -- get your name be back home Jim -- my
	}
      }
    >> }
}
\book {
  \bookOutputSuffix "tutti"
  \score {
    \unfoldRepeats
    \tripletFeel 8
    \transpose c ees
    <<
      \new Staff { \set Staff.midiInstrument = #"acoustic grand"
		   \lead }
      \new Staff { \set Staff.midiInstrument = #"harmonica"
		   \backing }
      \new Staff { \set Staff.midiInstrument = #"acoustic bass"
		   \bass }
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \unfoldRepeats
    \tripletFeel 8
    \transpose c ees
    <<
      \new Staff { \set Staff.midiMaximumVolume = #1
		   \lead }
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \backing }
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \bass }
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "backing"
  \score {
    \unfoldRepeats
    \tripletFeel 8
    \transpose c ees
    <<
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \lead }
      \new Staff { \set Staff.midiMaximumVolume = #1
		   \backing }
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \bass }
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \unfoldRepeats
    \tripletFeel 8
    \transpose c ees
    <<
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \lead }
      \new Staff { \set Staff.midiMaximumVolume = #0.2
		   \backing }
      \new Staff { \set Staff.midiMaximumVolume = #1
		   \bass }
    >>
    \midi { }
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

