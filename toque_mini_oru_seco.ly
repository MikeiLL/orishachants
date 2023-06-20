\version "2.18.2"

\header {
	title = "Tóque Mini Oru Seco"
	subtitle = "for Seven Primary Orisha"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}



oconcolo = \drummode {
	\partial 4 r4 | % La Topa
  r2. | r2 r8 cglo |
  \repeat volta 2 {
    ssh ^"Ya/La Topa (Eṣu)"  r cglo ssh r cglo | ssh r cglo ssh r cglo |
  }
  \time 4/4 % Ogundere
  r1 |
  \repeat volta 2 {
    cglo8. ^"Ogundere" cglo16 ssh4 cglo8 cglo ssh4 |
  }
  \time 6/8 % Imbaloke
  r2. | r2 r8 cglo |
  \repeat volta 2 {
    ssh ^"Imbaloke (Ochosi)"  r cglo ssh r cglo | ssh r cglo ssh r cglo |
  }
  \time 4/4 % Rezo de Obatala
  r1 |
  \repeat volta 2 {
    ssh4 ^"Rezo de Obatala" ssh ssh8 cglo << cglo4 ssh >> |
  }
  \time 12/8 % Meta
  r2. r |
  \repeat volta 2 {
    << cglo4 ssh ^"Meta (Shango)" >> cglo8 ssh4. << cglo4 ssh >> cglo8 ssh4. |
  }
  \time 2/4 % Oya
  r2 |
  \repeat volta 2 {
    ssh8^ "Oyá" << cglo ssh >> ssh << cglo ssh >> |
    ssh ssh << cglo ssh >> ssh |
  }
  \time 6/8 % Aró
  r2. | r2 r8 cglo |
  \repeat volta 2 {
    ssh ^"Aró (Yemaya)"  r cglo ssh r cglo | ssh r cglo ssh r cglo |
  }
  \time 4/4 % Rezo de Ochún
  r1 | r2. r8 cglo16 ssh |
  \repeat volta 2 {
    r8 ^"Rezo de Ochún" cglo16 ssh r8 ssh r8 ssh r cglo16 ssh |
    r8 cglo16 ssh r8 ssh r8 ssh r cglo16 ssh |
  }
}

itotole = \drummode {
	\partial 4 r4 | % La Topa
  r2. | r8 << ssh cglo >> r cglo ssh r |
  \repeat volta 2 {
    r ssh cglm cglo cglo4 | r8 << ssh cglo >> r cglo ssh r |
  }
  \time 4/4 % Ogundere
  r2. << ssh4 cglo >> |
  \repeat volta 2 {
    ssh ssh ssh << ssh4 cglo >> |
  }
  \time 6/8 % Imbaloke
  r2. | r |
  \repeat volta 2 {
    cglo8 ssh r cglo8 ssh r |
    \parenthesize cgl8 -"touch" ssh r \parenthesize cgl8 ssh r |
  }
  \time 4/4 % Rezo de Obatala
  r1 |
  \repeat volta 2 {
    << cglo4 ssh >> ssh ssh ssh |
  }
  \time 12/8 % Meta
  r2. r |
  \repeat volta 2 {
    \parenthesize cgl8 -"touch" ssh r \parenthesize cgl8 ssh r
    \parenthesize cgl8 ssh r \parenthesize cgl8 ssh r |
  }
  \time 2/4 % Oya
  r2 |
  \repeat volta 2 {
    cglo8 ssh cglm ssh | cglo8 ssh cglm ssh |
  }
  \time 6/8 % Arò
  r2. | r |
  \repeat volta 2 {
    cglo8 ssh r cglm8 ssh r |
    cglo8 ssh r cglm8 ssh r |
  }
  \time 4/4 % Rezo de Ochún
  r1 | r2 << cglo4 ssh >> << cglo4 ssh >> |
  \repeat volta 2 {
    ssh ssh8 cglm ssh cglo << cglo4 ssh >> |
    ssh ssh << cglo4 ssh >> << cglo4 ssh >> |
  }
}

iya = \drummode {
  \time 6/8 % La Topa
	\partial 4 ssh16 cglo~ cglo8 |
  cglo ssh16 cglo~ cglo8 cglo ssh16 cglo~ cglo8 | cglo r2 cglm8 |
  \repeat volta 2 {
    cglo ssh cglm ssh ssh cglm | cglo ssh cglm r ssh cglm |
  }
  \time 4/4 % Ogundere
  ssh8. ssh16 r4 ssh8 ssh r4 |
  \repeat volta 2 {
    ssh4 r8 ssh r cglo4. |
  }
  \time 6/8 % Imbaloke
  ssh4. ssh | cglo cglo8 cglo4 |
  \repeat volta 2 {
    ssh4. r | ssh cglo8 cglo4 |
  }
  \time 4/4 % Rezo de Obatala
  \tuplet 3/2 { ssh4 cglo ssh } cglo cglo |
  \repeat volta 2 {
    ssh cglo8 ssh r ssh ssh cglo |
  }
  \time 12/8 % Meta
  ssh4. cglo4 ssh8 cglo4 ssh8 cglo4. |
  \repeat volta 2 {
    ssh4. cglo4 ssh8 cglm4 ssh8 cglo4. |
  }
  \time 2/4 % Oya
  r4 \fermata << cglo8 ssh >> cglo |
  \repeat volta 2 {
    ssh8 cglo16 ssh r ssh ssh8 |
    ssh8 cglo16 ssh r ssh ssh8 |
  }
  \time 6/8 % Aró
  ssh4. ssh | ssh  << cglo ssh >> |
  \repeat volta 2 {
    ssh4 cglm cglo | ssh cglm cglo |
  }
  \time 4/4 % Rezo de Ochún
  r2 r4 ssh8 ssh | ssh cglo << cglo4 ssh >> ssh ssh |
  \repeat volta 2 {
    r4 r16 ssh8. cglo8. ssh16 r4 | r16 ssh8. cglo8 cglo ssh4 ssh |
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
