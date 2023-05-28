\version "2.18.2"

\header {
	title = "Tóque Koma rita Yeye Osun"
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
	Ye ye ko -- ma ri -- ta ye -- ye O -- sun.
  Se -- ke. Se -- ke.
  Se -- ke. Se -- ke. Se -- ke.
  Ko -- ma ri -- ta ye -- ye la -- de  O -- sun.
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
  ssh4 ssh4 cglo8 cglo | ssh ssh4 ssh cglo8 |
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
			\line { Coming soon }
			\line { \null }
    }
}
