\version "2.22"


\header {
  title = "Cinturini (v1.0)"
  composer = "Italie"
}

#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "tutti"
  \score {
    <<
      \new Staff {
	\new Voice = "melody" {
	  \relative {
	    \time 2/4 \tempo 4 = 120 \key bes \major
	    {
	      d'4 bes8 c | d4 g4 | f2 | f2 | f,4 bes8 c8 | d4 ees4 | c2 | r2 |
	      g'4 ees8 f8 | g4 a4 | f4. d8 | f2 | ees4 c8 d | ees4 f4 | bes,2 | 
	      \repeat volta 4 {		
		r8 f' <d f> f |
		<d f>4 <bes f'> | r8 f' <d f> f | <c f>2 | r8 a' a a | g8. f16 ees8 a  | g8. f16 ees8 f | d2 | r8 f <d f> f |
		<d f>4 <bes f'> | r8 f' <d f> f | <c f>2 | r8 a' a a | g8. f16 ees8 a  | g8. f16 ees8 f | bes,2 | r4 f8 bes |
		d2 | r8 c bes g | f2 | f4 d'8 ees | f4 f4 | g4 a4 | g8 ees8 r4 | r4 ees8 f |
		g2~ | g8 ees d ees | d2 | c4 f8 g | f4 ees | c f | bes,2 
	      }
	      
	    }
	  }
	}
      }
      \new Lyrics \lyricsto "melody" {
	{
	    Se -- mo de Cin -- tu -- ri -- ni 
	    La -- scia -- te -- ce pa -- ssa 
	    Se -- mo be -- lle_e sim -- pa -- ti -- che 
	    Ce fa -- mo ris -- pe -- tta

	    Ma -- ti -- na_e se -- ra, ti -- cche -- te -- tà 
	    In -- fi -- nu_a sa -- ba -- du ce to -- cca d’a -- bbo -- zzà
	    Ma -- ti -- na_e se -- ra, ti -- cche -- te -- tà 
	    In -- fi -- nu_a sa -- ba -- du ce to -- cca d’a -- bbo -- zzà
	  }
	<<
	  {
	    Qua -- nno fisch -- ia la si -- re -- na 
	    Pri -- ma_i -- nnan -- zi_che fa -- ccia giur -- nu 
	    Ce sen -- ti -- te_a -- ttur -- nu_a -- ttur -- nu 
	    Den -- tro Ter -- ni da pa -- ssa 
	  }
	  \new Lyrics { \set associatedVoice = "melody"
			Qua -- nno_a fes -- ta ce ve -- de -- te 
			Qua -- nno se -- mo_ar -- cu -- ti -- na -- te 
			Pe si -- gno -- re ce pi -- ja -- te 
			Se -- mo sci -- cche_in ve -- ri -- tà 
		      }
	  \new Lyrics { \set associatedVoice = "melody"
			Se quar -- cu -- nu che se cre -- de 
			Per -- che se -- mo te -- ssi -- to -- re 
			Ma se nui fa -- mo all' -- amo -- re
			La fa -- ce -- mo pe scher -- za 
		      }

	>>
      } 
    >>
    \layout {}
    \midi {}
  }
}

