\version "2.18.2"

\header {
	title = "Tóque Koma ri ida Dide Osun"
	subtitle = "for Osun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 4 a8 a | % Wẹ́ mi l'è...
			\repeat volta 2 {

			}
		}
}

text =  \lyricmode {
	Yè -- yé kó -- màá rí -- (i)da yè -- yé Ọ̀ -- ṣun.
  Sẹ́ -- kẹ́. Sẹ -- kẹ́.
  Sẹ́ -- kẹ́. Sẹ -- kẹ́. Sẹ́ -- kẹ́.
  Kó -- màá rí -- (i)da yè -- yé la -- de Ọ̀ -- ṣun.
}

clavebeat = \drummode {
	\partial 4 r4 |
  ssh4 ssh4. ssh8 | r8 ssh4 ssh4. |
  ssh4 ssh4. ssh8 | r8 ssh4 ssh4. |
  ssh4 ssh4. ssh8 | r8 ssh4 ssh4. |
  ssh4 ssh4. ssh8 | r8 ssh4 ssh4. |
}

oconcolo = \drummode {
	\partial 4 r8 cgl8 |
  ssh4 cgl8 ssh4 cgl8 | ssh4 cgl8 ssh4 cgl8 |
  ssh4 cgl8 ssh4 cgl8 | ssh4 cgl8 ssh4 cgl8 |
  ssh4 cgl8 ssh4 cgl8 | ssh4 cgl8 ssh4 cgl8 |
  ssh4 cgl8 ssh4 cgl8 | ssh4 cgl8 ssh4 cgl8 |
}

itotole = \drummode {
	\partial 4 r4 |
  \parenthesize cgl8 -"touch" ssh4 \parenthesize cgl8 ssh4 |
  \parenthesize cgl8 ssh4 \parenthesize cgl8 ssh4 |
  cglo8 << cglo4 ssh >> \parenthesize cgl8 ssh4 | cglo8 << cglo4 ssh >> \parenthesize cgl8 ssh4 |
  cglo8 << cglo4 ssh >> \parenthesize cgl8 ssh4 | cglo8 << cglo4 ssh >> \parenthesize cgl8 ssh4 |
  cglo8 ssh cglm  \parenthesize cgl8 ssh4 | cglo8 << cglo4 ssh >> cglm8  ssh4 |
}

iya = \drummode {
	\partial 4 r8 cglo |
  cglo4. ssh4. | cglo4. ssh4 cglo8 |
  ssh8 ssh4 r cglo8 | ssh8 ssh4 r cglo8  |
  ssh8 ssh4 cglo8 cglo4 | ssh8 ssh4 cglo4 cglo8 |
  ssh cglo ssh r cglo cglo | ssh ssh4 ssh8 cglo cglo |
}

\score {
  <<
  	\new DrumStaff \with {
  		drumStyleTable = #timbales-style
  		\override StaffSymbol.line-count = #1
  	}
  		<<
  		\set Staff.instrumentName = #"Clave"
      \clavebeat
		>>

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Oconcolo"
      \oconcolo
		>>

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Itotole"
      \itotole
		>>

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Iya"
      \iya
		>>
    \new Staff  {
    	\new Voice = "one" { \melody }
  	}

    \new Lyrics \lyricsto "words" \text
  >>
}

\markup {
    \column {
			\line { \null }
			\line { Translation from John Mason}
			\line { \null }
			\line { Let us not see the brass sword of Ọ̀ṣun. }
			\line { Handcuffs, handcuffs, handcuffs (brass bracelets). }
      \line { Let us not see the sword and not the handcuffs of Ọ̀ṣun. }
    }
}
