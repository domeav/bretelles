\version "2.22"

\include "swing.ly"

\header {
  title = "Jimmy (v3.1)"
  composer = "Moriarty"
}


#(set-global-staff-size 18)

globalTranspose =
#(define-music-function (parser location m)
  (ly:music?)
  #{ \transpose c d $m #})



leadVerseOne = \relative { e'8 e4.( c4) d8 c | e e4 c4. c8 c | d8 d4 d4. c8 a | c c c4 a4 r4 | 
			   c4 c4 c8 c4 c8 | c8 c4 e8( c4) r8 c8 | d4 d d d8 c | ees c4 c4. r4 | 
			   a'4 e c c8 c | g'8 g4 e4. d8 c | d8 d4. d8 c4 b8 | c c4 c4. r4 }

lyricsVerseOne = \lyricmode {
  Ji -- mmy__ won't you please come home where the grass is green and the buf -- fa -- loes roam
  Come see Jim -- my your un -- cle Jim__ and_your aun -- tie Jim and your cou -- sin Jim
  Come home Jimmy 'cause you need a bath and your grand -- pa Jim-- my is still gone daft
}

leadVerseTwo = \relative { gis4 gis | a8 a a4 a a | c8 c c4 c c | d4 d8 c d4 d8( c) | d8 c c8  c4. r4 |
			   a a a8 a a a | c4 c8 c c4. c8 | d d d4 d d8 d | d a4 a8 a4 r4|
			   r8 a' e8 c4 r4 c8 | g' g4 e4. r8 c8 | d4 d8 c d4 d8 c | ees8 c4 c4. r4 |
			 }
lyricsVerseTwo = \lyricmode {
  Now there's buf -- fa -- lo Jim and buf -- fa -- lo Jim and Jim buf -- fa -- lo now__ di -- dn't you know__
  Jim Jim Jim -- my it's your last ci -- ga -- rette but_there's buf -- fa -- lo piss and it's all kind of wet
  Jam -- bo Jimmy you'd better_hold your nose, all__ roads lead to roam with the buf -- fa -- loes
}


leadVerseThree = \relative { e'8 gis, | a a a a a4 a8 a | c c c4 c r8 c | d4 d d8 d d c | d c c c c4 r8 gis |
			     e' a, a a a4 a8 a | c c c4 c r8 c | b b b4 b b | c8 a a4 a r4 |
			     e'8 e4.( c4) d8 c | e e4 c4. c8 c | d8 d4 d4. c8 a | c c c4 a4 r4 |
			     a'8 a4. c8 a a a | g8 g g4 e d8 c | d4 d d r8 c | e c c4 c r4 |
			   }

lyricsVerseThree = \lyricmode {
  Hey! You've got -- ta have a wash but you can't clean your name, you're now called Jim -- my you'll be Jim -- my just the same
  The keys are in a bag in a chest by the door, one of Jim -- my's friends has ta -- ken the floor
  Ji -- mmy won't you please come home where the grass is green and the buf -- fa -- loes roam
  Dear old Jim -- my you've for -- got -- ten you're young, but you can't ig -- nore the buf -- fa -- lo song
}

leadChorus = \relative { a8 | e'8 e e4 d c | d4.( c4.) c4 | d4. d4. e4 | c2 r4.  a8 
			 e'8 e e4 d c | d4.( c4.) r4 | b4. b4. c4 | b8 a4. r4.  a8 
			 e'8 e e4 d c | d4.( c4.) r4 | d4. d4. c4 | e2 r4.  a,8 
			 e'8 e e4 d c | d4.( c4.) r4 | b4. b4. c4 | b8( a4.) }

lyricsChorus = 	\lyricmode {
  The Buf -- fa -- loes used to say __ be proud of your name
  The Buf -- fa -- loes used to say __ be what you a -- re
  The Buf -- fa -- loes used to say __ roam where you roam
  The Buf -- fa -- loes used to say __ do what you do __
}


leadEnd = \relative { a8 a a | e'4 e d c | d4.( c4.) r4 | b8 b b4 b c | b8 a4 a8~a4. a8 |
		      e'4 e d c | d4.( c4.) r4 | b8 b b4 b c | b8 a4 a8~a8 }

lyricsEnd = \lyricmode {
  If you re -- mem -- ber you're un -- known __
  Buf -- fa -- lo -- land will be your home
  Re -- mem -- ber you're un -- known __
  Buf -- fa -- lo -- land will be your home
}


backVerse = \relative { a'8 a4 r8 r2 | c8 c4 r8 r2 | d4 d8 c8 d8 d4 r8 | e8 e4 r8 r2}
backLastVerse = \relative { a'8 a4. c8 a a a | g8 g g4 g g8 g | g4 g g r8 g | a a a4 a r4 | }
backChorus = \relative {
  a8 | e'8 e e4 e e | f2. r4 | d4. d4. c4 | e2 r4.  a,8 
  e'8 e e4 d c | d4.( c4.) r4 | d4. d4. e4 | c8( a4.)
}
backEnd = \relative { g'8 g g | a4 a e' e | e4.( c4.) r4 | d8 d d4 d e | d8 c4 c8~c4. g8 |
		      a4 a e' e  | e4.( c4.) r4 | d8 d d4 d e  | d8 c4 c8~c8 }

allBack = {
  r1 r1 r1 r1 \backVerse
  \backVerse
  r1 r1 r1 r1 r1 r1 r1 r1
  \backVerse \backVerse r1-"solo!" r1 r1 r1
  r1 r1 r1 r1 r1 r1 r1 r2. r8
  \backChorus r2
  r1-"solo!" r1 r1 r1
  \backVerse
  \backVerse
  r1 r1 r1 r1 \backLastVerse
  r1-"solo!" r1 r1 r1
  r1 r1 r1 r1 r1 r1 r1 r2. r8
  \backChorus
  r2 r1 r1 r1 r1 r1 r1 r1 r2 r8
  \backEnd r4.
}

backVerseLyrics = \lyricmode {
  Jim -- my Jim -- my
  Jim Jim -- my Jim -- my Jim -- my
}

backChorusLyrics = \lyricmode {
  The Buf -- fa -- loes used to say __ roam where you roam
  The Buf -- fa -- loes used to say __ do what you do __
}

backLastVerseLyrics = \lyricmode {
  Dear old Jim -- my you've for -- got -- ten you're young, but you can't ig -- nore the buf -- fa -- lo song
}

bassVerse = \relative { a,4 a8 a a a8 b4  | c c8 c c b a4 | b4 b8 b b b d4 | f8 e c e4. r4 }
bassVerseLyrics = \lyricmode {
  Roam Ji -- mmy Ji -- mmy roam, roam Ji -- mmy buf -- fa -- lo roam Ji -- mmy Ji -- mmy don't, for -- get your name
}
bassChorus = \relative { r1 | f4. e8 f e4. | b2 r2 | r2 a8 b c4 }
bassChorusLyrics = \lyricmode {Buf -- falos used to say Ji -- mmy please Don't for -- get your name you're so young }
bassChorusAlt = \relative { r1 | f4. e8 f e4. | d2 r2 | r2 c8 d e4 }
bassChorusAltLyrics = \lyricmode {Buf -- falos used to say Ji -- mmy please Don't for -- get your name be back home Jim -- my }
bassChorusAltEnd = \relative { r1 | f4. e8 f e4. | d2 r2 | e8 e d4 c8 b4. }
bassEnd = \relative { r2 e4 e | f2 r2 | d8 d d4 g,4 g | a8 a4 a8~a2 }
bassEndLyrics = \lyricmode { you're un -- known __ Buf -- fa -- lo -- land will be your home }

chordsVerse = \chordmode { a1:m | c | g | f }
chordsChorus = \chordmode { a1:m | f | g | a:m }


\book {
  \bookOutputSuffix "conductor"
  \score {
    \tripletFeel 8
    \globalTranspose 
    <<
      \new ChordNames { \chordsVerse \chordsVerse \chordsVerse \chordsVerse			
			\chordsVerse \chordsVerse \chordsVerse \chordsVerse			
			\chordsChorus \chordsChorus \chordsChorus \chordsChorus
			\chordsVerse \chordsVerse \chordsVerse \chordsVerse
			\chordsVerse \chordsVerse
			\chordsChorus \chordsChorus \chordsChorus \chordsChorus
			\chordsChorus \chordsChorus
		      }
      \new Staff { \time 4/4 \tempo 4 = 124 \key a \minor
		   \set Staff.midiInstrument = #"harpsichord"
		   \allBack
		 }
      \addlyrics {
	\backVerseLyrics \backVerseLyrics
	\backVerseLyrics \backVerseLyrics
	\backChorusLyrics
	\backVerseLyrics \backVerseLyrics
	\backLastVerseLyrics
	\backChorusLyrics
	\lyricsEnd
      }
      
      \new Staff { \time 4/4 \tempo 4 = 124 \key a \minor
		   \leadVerseOne 
		   r1 r1 r1 r2 \leadVerseTwo
		   r1 r1 r1 r2.. \leadChorus r2
		   r1 r1 r1 r2. \leadVerseThree
		   r1 r1 r1 r2.. \leadChorus r8 
		   \leadEnd
		   \leadEnd r4.   \bar "|."
		 }
      \addlyrics {
	\lyricsVerseOne
	\lyricsVerseTwo
	\lyricsChorus
	\lyricsVerseThree
	\lyricsChorus
	\lyricsEnd
	\lyricsEnd
      }
      \new Staff { \key a \minor
		   \set Staff.midiInstrument = #"acoustic bass" \clef "bass" {
		     \bassVerse \bassVerse \bassVerse \bassVerse
		     \bassVerse \bassVerse \bassVerse \bassVerse
		     \bassChorus \bassChorusAlt \bassChorus \bassChorusAltEnd
		     \bassVerse \bassVerse \bassVerse \bassVerse \bassVerse
		     \bassVerse
		     \bassChorus \bassChorusAlt \bassChorus \bassChorusAltEnd
		     \bassEnd \bassEnd \bassEnd \bassEnd
		   }}
      \addlyrics {
	{
	  \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics
	  \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics
	  \bassChorusLyrics \bassChorusAltLyrics
	  \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics \bassVerseLyrics
	  \bassChorusLyrics \bassChorusAltLyrics
	  \bassEndLyrics \bassEndLyrics \bassEndLyrics \bassEndLyrics
	  
	}
      }
    >>
    \layout {}
    \midi {}
  }
}
\book {
  \bookOutputSuffix "lead"
  \score {
    {
      \globalTranspose 
      <<
	\new Staff \with { instrumentName = "Verse 1"}
	{ \time 4/4  \key a \minor \tempo 4 = 124
	  { \leadVerseOne } }
	\addlyrics {
	  \lyricsVerseOne
	}
      >>
    }
  }
  \score {
    {
      \globalTranspose
      <<
	\new Staff  \with { instrumentName = "Verse 2"} {
	{ \key a \minor \partial 2 \leadVerseTwo } }
	\addlyrics {
	  \lyricsVerseTwo
	}
      >> }
  }
  \score {
    {
      \globalTranspose
      <<
	\new Staff \with { instrumentName = "Chorus"} { 
	  { \key a \minor \partial 8 \leadChorus r2 } }
	\addlyrics {
	  \lyricsChorus
	}
      >> }
  }
  \score {
    {
      \globalTranspose
      <<
	\new Staff  \with { instrumentName = "Verse 3"} { 
	  { \key a \minor  \partial 4 \leadVerseThree } }
	\addlyrics {
	  \lyricsVerseThree	 
	}
      >> }
  }
  \score {
    {
      \globalTranspose
      <<
	\new Staff  \with { instrumentName = "End"} { 
	  { \key a \minor \partial 4. \leadEnd } }
	\addlyrics {
	  \lyricsEnd
	}
      >> }
  }
}


\book {
  \bookOutputSuffix "bass"
  \score {
    {
      \globalTranspose 
      <<
	\new Staff \with { instrumentName = "Bass Verse"}
	{
	  \time 4/4  \key a \minor \tempo 4 = 124 \clef "bass"
	  \bassVerse \bar ":|."
	}
	\addlyrics {
	  \bassVerseLyrics
	}
      >>
    }
  }
  \score {
    {
      \globalTranspose
      <<
	\new Staff \with { instrumentName = "Bass Chorus"} { 
	  { \key a \minor \clef "bass"
	    \bassChorus \bassChorusAlt \bassChorus \bassChorusAltEnd } }
	\addlyrics {
	  \bassChorusLyrics \bassChorusAltLyrics
	}
      >> }
 }
  \score {
    {
      \globalTranspose
      <<
	\new Staff  \with { instrumentName = "Bass End"} { 
	  { \key a \minor \clef "bass" \bassEnd  \bar ":|." } }
	\addlyrics {
	  \bassEndLyrics
	}
      >> }
  }
}


\book {
  \bookOutputSuffix "back"
  \score {
    {
      \globalTranspose 
      <<
	\new Staff \with { instrumentName = "Verse Back"}
	{
	  \time 4/4  \key a \minor \tempo 4 = 124 \clef "treble"
	  \backVerse
	}
	\addlyrics {
	  \backVerseLyrics
	}
      >> }
  }
  \score {
    {
	\globalTranspose 
	<<
	  \new Staff \with { instrumentName = "Chorus Back End"}
	  {
	    \time 4/4  \key a \minor \tempo 4 = 124 \clef "treble"
	    r2.. \backChorus
	}
	  \addlyrics {
	    \backChorusLyrics
	  }
	>>
      }
    }
  \score {
    {
	\globalTranspose 
	<<
	  \new Staff \with { instrumentName = "Back End"}
	  {
	    \time 4/4  \key a \minor \tempo 4 = 124 \clef "treble"
	    r2 r8 \backEnd
	}
	  \addlyrics {
	    \lyricsEnd
	  }
	>>
      }
    }

}