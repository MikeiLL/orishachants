\version "2.18.2"

\header {
	title = "Toque Terimina Minateri"
	subtitle = ""
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}



clavebeat = \drummode {
  \time 6/8
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
}

oconcolo = \drummode {
  cglo8 cglo16 ssh8. cglo ssh | cglo8. ssh cglo8 cglo16 ssh8. |
  cglo8 cglo16 ssh8. cglo ssh | cglo8. ssh cglo8 cglo16 ssh8. |
  cglo8 cglo16 ssh8. cglo ssh | cglo8. ssh cglo8 cglo16 ssh8. |
  cglo8 cglo16 ssh8. cglo ssh | cglo8. ssh cglo8 cglo16 ssh8. |
}

itotole = \drummode {
  ssh4 cglo8 ssh4 cglo8 | ssh4 cglo8 ssh cglo cglo |
  ssh4 cglo8 ssh4 cglo8 | ssh4 cglo8 ssh cglo cglo |
  ssh4 cglo8 ssh4 cglo8 | ssh4 cglo8 ssh cglo cglo |
  ssh4 cglo8 ssh4 cglo8 | ssh4 cglo8 ssh cglo cglo |
}

iya = \drummode {
  cglo8 r8. ssh16 \parenthesize cglo8 r8. ssh16 |
  \parenthesize
  cglo8 ssh4 cglo8 ssh ssh |

  cglo8 r8. ssh16 \parenthesize cglo8 ssh4 |
  \parenthesize
  cglo8 ssh cglo cglo8 ssh ssh |

  cglo8 ssh8. ssh16 \parenthesize cglo8 ssh8. ssh16 |
  \parenthesize
  cglo8 ssh8. ssh16 r8 ssh ssh |

  cglo8 r8. ssh16 \parenthesize cglo8 ssh4 |
  \parenthesize
  cglo8 ssh cglo cglo8 ssh ssh |
}

\score {
  <<
  	\new DrumStaff \with {
  		drumStyleTable = #timbales-style
  		\override StaffSymbol.line-count = #1
  	}
  		<<
  		\set Staff.instrumentName = #"clave"
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
  >>
}
