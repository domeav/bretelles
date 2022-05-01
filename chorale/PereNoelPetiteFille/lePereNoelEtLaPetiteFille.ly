\version "2.22"

\include "swing.ly"

\header {
  title = "Le père Noël et la petite fille (v1.0)"
  composer = "Georges Brassens"
}

globalTranspose =
#(define-music-function (parser location m)
  (ly:music?)
  #{ \transpose c ees $m #})


chordz = \chords { \repeat volta 5 {
  \set ChordNames.midiMaximumVolume = #0
  a2:m a2:m | g2:7 c2 |
  c2 c2 b2:dim e2 |
  a2:m a2:m | g2:7 c2 |
  c2 c2 b2:dim e2 |
  \time 2/4 e2 | \time 4/4 e2 e2 |
  f2 f2 | b2:dim b2:dim | e2 e2 | 
  a2:m a2:m  | c2 c2 | b2:dim b2:dim | e2 e2 |
  a2:m a2:m  | c2 c2 | f2 e2 | a2:m a2:m |
}
		 }

lead = 	\relative {
  \key a \minor
  \time 4/4
  \tempo 4 = 130 {
    r8 a a8 a c4 c4 | d4 d8 e8~e4 r4 |
    r8 e  c8 e g4 f4 | e4 d8 e8~e4 r8 e8 |
    a,4 a4 c4 c4 | d4 g8 e8~e4 r4 |
    r8 e  c8 e g4 f4 | e4 d8 e8~e4 r4 |
    \time 2/4 e8 e8 fis4 |
    \time 4/4 gis4 gis4 a4 b8 c8~ | c4 r4 a8 b c4 | b4 a4 g4 f8 e8~ | e4 r4 r2 |
    a,4 c4 e4 a4 | g2 e4 g4 | f1 | e1 |
    a,4 c4 e4 a4 | g2 e4 d4 | c2 b2 | a2 r2 |		    
  }
}

back = \relative {
  \key a \minor
  \time 4/4
  \tempo 4 = 130 {
    r1 | r2 r8 g'8 g8 g8 | g2 r2 | r2 r8 gis8 gis8 a8~ |
    a2 r2 | r2 r8 g8 g8 g8 | g2 r2 | r2 r8 gis8 gis8 gis8 |
    \time 2/4 gis2 |
    \time 4/4 b2.. a8~ | a1 | r1 | r1 |
    a4 a4 a4 a4 | g2 g4 g4 | b8 b4. d8 d8 b4 | b8 b4. d8 d8 b4 |
    a4 a4 a4 a4 | g2 g4 g4 | a2 gis2 | a2 r2 
  }
}

bass = 	\relative {
  \key a \minor
  \time 4/4
  \tempo 4 = 130
  \clef "bass" {
    r8 e e8 c a4 gis4 | g4 g8 c8~c4 r4 |
    r8 c  c8 b c4 c4 | b4 b8 b8~b4 r8 e8 |
    e4 c4 a4 gis4 | g4 g8 c8~c4 r4 |
    r8 c  c8 b c4 c4 | b4 b8 b8~b4 r4 |
    \time 2/4 e8 e8 e4 |
    \time 4/4 e4 e4 e4 e8 f8~ | f4 r4 f8 f f4 | b,4 b4 b4 f'8 e8~ | e8 e8 d4 c4 b4 |
    e4 e4 a,4 c4 | c2 c4 c4 | b1 | e8 e d4 c4 b4 |
    e4 e4 a,4 c4 | c2 c4 c4 | f2 e2 | a,2 r2 |		    
  }
}

\book {
  \bookOutputSuffix "tutti"
  \score {
    \tripletFeel 8
    \globalTranspose
    <<
      \new ChordNames \chordz
      \new Staff {
	\new Voice = "back" {
	  \repeat volta 5 {
	    \back
	  }
	}
      }
      \new Staff {
	\new Voice = "lead" {
	  \repeat volta 5 {
	    \lead
	  }
	}
      }
      \new Lyrics \lyricsto "lead" {
	<<
	  {
	    A -- vec sa hot -- te sur le dos, a -- vec sa hot -- te sur le dos
	    Il s'en rev -- 'nait d'El -- do -- ra -- do, il s'en rev -- 'nait d'El -- do -- ra -- do
	    Il a -- vait u -- ne bar -- be blanche, il a -- vait nom Pa -- pa Gâ -- teau
	    Il a mis du pain sur ta plan -- che
	    Il a mis les mains sur tes han -- an -- ches
	  }
	  \new Lyrics \lyricsto "lead" {
	    Il t'a prom -- 'née dans un lan -- deau, il t'a prom -- 'née dans un lan -- deau
	    En rou -- te pour la vie d'cha -- teau, en rou -- te pour la vie d'cha -- teau
	    La bel -- le vie do -- rée sur tranche, il te l'of -- frit sur un pla -- teau
	    Il a mis du grain dans ta gran -- ge
	    Il a mis les mains sur tes han -- an -- ches
	  }
	  \new Lyrics \lyricsto "lead" {
	    Toi qui n'a -- vais rien sur le dos, toi qui n'a -- vais rien sur le dos
	    Il t'a cou -- ver -- te de man -- teaux, il t'a cou -- ver -- te de man -- teaux
	    Il t'a vé -- tue comme un di -- manche, tu n'au -- ras pas froid de si -- tôt
	    Il a mis l'her -- mine à ta man -- che
	    Il a mis les mains sur tes han -- an -- ches
	  }
	  \new Lyrics \lyricsto "lead" {
	    Tous les ca -- mées, tous les é -- maux, tous les ca -- mées, tous les é -- maux
	    Il les fit pendre à tes ra -- meaux, il les fit pendre à tes ra -- meaux
	    Il fit rou -- ler en a -- va -- lanche perles et ru -- bis dans tes sa -- bots	    
	    Il a mis de l'or à ta bran -- che
	    Il a mis les mains sur tes han -- an -- ches
	  }
	  \new Lyrics \lyricsto "lead" {
	    Ti -- re la belle, tire le ri -- deau, ti -- re la belle, tire le ri -- deau
	    Sur tes mi -- sè -- res de tan -- tôt, sur tes mi -- sè -- res de tan -- tôt
	    Et qu'au de -- hors il pleuve, il vente, le mau -- vais temps n'est plus ton lot
	    Le jo -- li temps des cou -- dées fran -- ches
	    On a mis les mains sur tes han -- an -- ches
	  }
	  >>
      }
      \new Staff {
	\new Voice = "bass" {
	  \repeat volta 5 {
	    \bass
	  }
	}
      }

    >>
    \layout {}
    \midi {}
  }
}
   
