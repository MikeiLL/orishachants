\version "2.18.2"

\header {
	title = "Tóque Mini Oru Seco"
	subtitle = "for Seven Primary Orisha"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}



oconcolo = \drummode {
	\partial 4 r4 |
}

itotole = \drummode {
	\partial 4 r4 |
}

iya = \drummode {
  \time 6/8
	\partial 4 ssh16 cglo~ cglo8 |
  cglo ssh16 cglo~ cglo8 cglo ssh16 cglo~ cglo8 | cglo r2 cglm8 |
}

\score {
  <<

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

  >>
}

\markup {
    \column {
			\line { \null }
			\line { Translation from John Mason}
			\line { \null }
			\line { Coming soon }
			\line { \null }
    }
}
