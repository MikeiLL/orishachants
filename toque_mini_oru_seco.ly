\version "2.18.2"

\header {
	title = "Tóque Mini Oru Seco"
	subtitle = "for Seven Primary Orisha"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}



oconcolo = \drummode {
	\partial 4 r4 |
  r2. | r2 r8 cglo |
  \repeat volta 2 {
    ssh ^"Ya/La Topa (Eṣu)"  r cglo ssh r cglo | ssh r cglo ssh r cglo |
  }
}

itotole = \drummode {
	\partial 4 r4 |
  r2. | r8 << ssh cglo >> r cglo ssh r |
  \repeat volta 2 {
    r ssh cglm cglo cglo4 | r8 << ssh cglo >> r cglo ssh r |
  }
}

iya = \drummode {
  \time 6/8
	\partial 4 ssh16 cglo~ cglo8 |
  cglo ssh16 cglo~ cglo8 cglo ssh16 cglo~ cglo8 | cglo r2 cglm8 |
  \repeat volta 2 {
    cglo ssh cglm ssh ssh cglm | cglo ssh cglm r ssh cglm |
  }
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
			\line { \null }
			\line { \null }
    }
}
