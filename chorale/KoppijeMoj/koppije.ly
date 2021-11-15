\version "2.22"


\header {
  title = "Koppije (v1.0)"
  composer = "Albanie/Italie"
}

#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "tutti"
  \score {
    <<
      \new Staff {
	\new Voice = "melody" {
	  \relative {
	    \time 3/4 \tempo 4 = 180 \key c \minor
	    {
	      \partial 4 g4 |
	      \repeat volta 2 { c2 d4 | <c ees>2 <c f>4 | <c ees g>2.( | <c f aes>2) <c ees g>4 | <g d' f>2( <g b d>4) | <g ees' g>2 <g d' f>4 | <g d' f> <c ees> <c d> | c2. | }
	      \alternative {
		{ r2 g4 }
		{ r2 c'4 }
	      }
	      \repeat volta 2 {
		bes4 <bes, d f> <bes d f> | <bes d f>2 <bes d f>4 | <bes ees g>2 <bes ees g>4 | <bes ees g> <bes ees g> <bes ees g> | <bes f' bes>2 <bes f' bes>4 | <bes f' bes>2 <bes ees aes>4 | <bes d g>2
		<bes d g>4 | <b f' aes>2 <b d f>4 | <c g'>2.( | <c f g>4 <c es g>4 <c d g>4) | <c ees g>2 <bes d g>4 | <b f' aes>2 <b d f>4 | <c g'>2.( | <c f>4 <c ees>4 <c d>4) | c2. }
	      \alternative {
		{ r2 c'4 }
		{ r2 g4 }
	      }
	    }
	  }
	}
      }
      \new Lyrics \lyricsto "melody" {
	<<
	  {
	    Ko -- ppi -- je, moj ko -- ppi __ je tche __ me lam -- ba -- ris -- ti -- na Ko
	    Si bo -- re zan -- ga ta -- ma -- lie ze -- me -- ra i me -- mo -- ye -- ti
	    Ti ye me -- llo -- sin
	    Ti ye me -- llo__ -- sin
	  }
	  \new Lyrics { \set associatedVoice = "melody"
			Me -- llo -- se -- mish te mit __ e ma __ moi  ve -- tem ash -- ti -- na Me
			Us -- si lu -- na -- z_e bir -- lan -- di ze -- me -- ra i me -- mo -- ye -- ti
			Tem -- ba gne -- ghis -- ti
			Tem -- ba gne -- ghis -- ti
		      }
	>>
      } 
    >>
    \layout {}
    \midi {}
  }
}
