\version "2.22"


\header {
  title = "El Carbonero (v1.1)"
  composer = "Daniel Romero Puentedura"
}

#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 18)

globalTranspose =
#(define-music-function (parser location m)
  (ly:music?)
  #{ \transpose c d $m #})


\book {
  \bookOutputSuffix "tutti"
  \score {
    \globalTranspose
    \new Staff {
      <<
	\new Voice = "one" {
	  \relative {
	    \time 2/4 \tempo 4 = 100 \key c \major
	    <<
	      { \voiceOne \partial 8 e'8 \bar ".|:" g2~ | g2~ | g2~ | g4. }
	      \new Voice  = "two" { \voiceThree \partial 8 r8 | r4. c,8 | e2~ | e2~ | e4. }
	      \new Voice = "three" { \voiceTwo \partial 8 r8 | r2 | r4. g,8 | c2~ | c4. }
	    >>
	    
	    \oneVoice {
	      e8 | g16 a8 g16 e8 d8 | <c e>8.^"fine" <c e>16 <c e>8 <e g>8 | <d f>16 <d f>8 <d f>16 <d a'>8 g8 | e16 <c e>8 <c e>16 <c e>8 <e g>8 | <d f>16 <d f>8 <d f>16 <d a'>8 g8 |
	    }  
	    
	    <<
	      { \voiceOne e8 c4. | r2 | r2 \bar "||"
		c16 c8 c16 c8 e8 | d16 d8 d16 d8 g8 | e8 c4. | r2
		c16 c8 c16 c8 e8 | d16 d8 d16 d8 g8 | e8 c4. | r4. e8 \bar ":|." }
	      \new Voice = "twoback" { \voiceTwo r4. g,8 | c4 r8 g8 | c4 r8 g8 | c4 r8 g8 | c4 r8 g8 |
			   c4 r8 g8 | c4 r8 g8 | c4 r8 g8 | c4 r8 g8 | c4 r8 g8 | c4 r4 |}
	    >>
	  }
	}
	\new Lyrics \lyricsto "one" {
	  Car -- bon
	  Car -- bon de_en -- cin -- na_y pi -- con, car -- bon
	  de_en -- ci -- na, pi -- con de_o -- li -- vo, ni -- ña
	  bo -- ni -- ta, ven -- te con -- mi -- go
	  <<
	    { Ma -- dre mi car -- bon -- ne -- ro no vi -- no_a no -- che
	      Y lo_es -- tu -- ve_es -- pe -- ran -- do has -- ta las  do -- ce }
	    \new Lyrics { \set associatedVoice = "one"
			  Ma -- dre mi car -- bon -- ne -- ro vi -- no de Vé -- lez
			  Y_en el som -- bre -- ro tra -- jo cua -- tro cla -- ve -- les
			}
	    \new Lyrics { \set associatedVoice = "one"
			  Lle --  va mi car -- bo -- ne --ro en el som -- bre -- ro
			  un le -- tre -- ro que di -- ce: por ti te muer -- to
			}
	  >>
	}
	\new Lyrics \lyricsto "two" {
	  Car -- bon
	}
	\new Lyrics \lyricsto "twoback" {
	  car -- bon car -- bon car -- bon car -- bon car -- bon car -- bon car -- bon car -- bon car -- bon car -- bon
	}
	\new Lyrics \lyricsto "three" {
	  Car -- bon
	}
      >>
    }
    \layout {}
    \midi {}
  }
}
