\version "2.22"


\header {
  title = "Viva Tutte le Vezzose (v1.0)"
  composer = "Felice Giardini"
}

soprano = \relative {
  \time 2/4 \tempo 4 = 120 \key ees \major
  \partial 4 ees'8 f8 |
  \repeat volta 2 {
    g8 ees aes g | f ees
    g aes | bes g c bes | aes g
    bes bes | bes bes c bes | bes aes aes aes16 aes16 | aes8 bes16 c16 bes8 aes | aes g
    bes bes | c c bes d, | ees4 bes'8 bes | c c bes d, | }
  \alternative { { ees4 ees8 f } { ees4 bes'8 bes } }
  \repeat volta 2 {
    bes2~bes2~bes2~bes2 |
    bes4 c8 c | bes g aes f | g4
    bes8 c | aes f r4 | r4
    bes8 c | aes f r4 | r4
    bes8 bes | bes bes c bes | bes aes aes aes16 aes16 | aes8 bes16 c16 bes8 aes | aes g
    bes bes | c c bes d, | ees4 bes'8 bes | c c bes d, | }
  \alternative { { ees4 bes'8 bes } { ees,4 r4 } } \bar "|."
}

alto = \relative {
  \time 2/4 \tempo 4 = 120 \key ees \major
  \partial 4 r4 |
  \repeat volta 2 {
    r2 | r4
    ees'8 f8 | g8 ees aes g | f ees
    g g | g g aes g | g f f f16 f | f8 g16 aes g8 f | f ees
    g g | aes aes g f | g4
    g8 g | aes aes g f | }
  \alternative { { g4 r4 } { g4 r4 } }
  \repeat volta 2 {
    r4 g8 aes | bes g aes f | g g
    g8 aes | bes g aes f | g g
    aes aes | g ees f d | ees4
    g8 aes | f d r4 | r4
    g8 aes | f d r4 | r4
    g8 g | g g aes g | g f f f16 f | f8 g16 aes g8 f | f ees
    g g | aes aes g f | g4
    g8 g | aes aes g f |
  }
  \alternative { { g4 r4 } { g4 r4 } }
}

tenor = \relative {
  \time 2/4 \tempo 4 = 120 \key ees \major \clef GG
  \partial 4 r4 |
  \repeat volta 2 {
    r2 r2 r2 | r4
    ees'8 ees | ees ees ees ees | ees d d d16 d | d8 ees16 f ees8 d | d bes
    ees ees | f f ees d | bes4
    ees8 ees | f f ees d 
  }
  \alternative { { bes4 r4 } { bes4 r4 } }
  \repeat volta 2 {
    r2 r4 ees8 ees ees2~ees2 | ees4
    f8 f | ees ees d d | bes4 r4 | r4
    bes16( c) d( bes) | ees8 ees r4 | r4
    bes16( c) d( bes) | ees8 ees
    ees8 ees | ees ees ees ees | ees d d d16 d | d8 ees16 f ees8 d | d bes
    ees ees | f f ees d | bes4
    ees8 ees | f f ees d 
  }
  \alternative { { bes4 r4 } { bes4 r4 } }
}

basso = \relative {
  \time 2/4 \tempo 4 = 120 \key ees \major  \clef bass
  \partial 4 r4 |
  \repeat volta 2 {
    r2 r2 r2 | r4
    ees8 ees | ees ees ees ees | bes' bes, bes bes16 bes | bes8 bes16 bes bes8 bes | ees ees
    ees8 ees | aes, aes bes bes | ees4 ees8 ees | aes aes bes bes, |
  }
  \alternative { { ees4 r4 } { ees4 r4 } }
  \repeat volta 2 {
    r4 ees8 f | g ees f d | ees ees ees f | g ees f d | ees ees
    aes aes | bes bes bes, bes | ees4 r4 | r4
    bes16( c) d( bes) | ees8 ees r4 | r4
    bes16( c) d( bes) | ees8 ees
    ees8 ees | ees ees ees ees | bes' bes, bes bes16 bes | bes8 bes16 bes bes8 bes | ees ees
    ees8 ees | aes, aes bes bes | ees4 ees8 ees | aes aes bes bes, |
  }
  \alternative { { ees4 r4 } { ees4 r4 } }
}


vivaTutte = \lyricmode { Vi -- va tut -- te le vez -- zo -- se, }
donneAmabili = \lyricmode { don -- ne a -- ma -- bi -- li gra -- zi -- o -- se }
cheNonHanno = \lyricmode { Che non han -- no  cru -- del -- tà }
vivaSempre = \lyricmode { Vi -- va sem -- pre la mag -- gior fe -- li -- ci -- tà. }
leVezzose = \lyricmode { Le vez -- zo -- se }
vivaSempreVivaViva = \lyricmode {
  Vi -- va sem -- pre vi -- va vi -- va che da lo -- ro sol de -- ri -- va
  la mag -- gior fe -- li -- ci -- tà.
}
vivaViva = \lyricmode { Vi_ -- va_, vi -- va! }

\book {
  \bookOutputSuffix "tutti"
  \score {
    <<
      \new Staff {
	\soprano
      }
      \addlyrics {
	\vivaTutte
	\vivaTutte
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	Vi -- va tà
	\vivaSempre
	\leVezzose
	\leVezzose
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	Vi -- va tà
      }
      \new Staff {
	\alto
      }
      \addlyrics {
	\vivaTutte
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
	\vivaSempreVivaViva
	\leVezzose
	\leVezzose
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
      }
      \new Staff {
	\tenor
      }
      \addlyrics {
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
	\vivaSempre
	\vivaViva
	\vivaViva
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
      }
      \new Staff {
	\basso
      }
      \addlyrics {
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
	\vivaSempreVivaViva
	\vivaViva
	\vivaViva
	\vivaTutte
	\donneAmabili
	\cheNonHanno
	\cheNonHanno
	tà
      }
    >>
  }
  \score {
    \unfoldRepeats
    <<
      \new Staff \soprano
      \new Staff \alto
      \new Staff \tenor
      \new Staff \basso
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "soprano"
  \score {
    \unfoldRepeats
    <<
      \new Staff \soprano
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \unfoldRepeats
    <<
      \new Staff \alto
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \unfoldRepeats
    <<
      \new Staff \tenor
    >>
    \midi { }
  }
}

\book {
  \bookOutputSuffix "basso"
  \score {
    \unfoldRepeats
    <<
      \new Staff \basso
    >>
    \midi { }
  }
}
