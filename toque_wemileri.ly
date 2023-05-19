\version "2.18.2"

\header {
	title = "Tóque Wẹ́ mi l'èrè"
	subtitle = "for Ṣàngó"
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
			 	a4 f8 a a g~ | g f8( d) f4 r8 | % èrè (Ẹ̀) 'lúbẹ, o̩ mo 'yó
        r8 a c f, a g~ | g f8( d) f8( d) r | % E̩ wẹ́ wẹ́ mi o̩ mo 'yó.
        d f d g g d~ | d d8( c) d a' a | % Ṣàn gó, ko wà 'yè. O̩ mo 'yó Wẹ́ mi
			}
		}
}

text =  \lyricmode {
	Wẹ́ mi l'è -- rè (Ẹ̀)'lú -- bẹ, o̩ mo 'yó
  E̩ wẹ́ wẹ́ mi o̩ mo 'yó.
  Ṣàn -- gó, ko wà 'yè. O̩ mo 'yó Wẹ́ mi l'è

}

clavebeat = \drummode {
	\partial 4 r4 |
  ssh4. ssh4 ssh8 -"bombo" | r4 ssh4 ssh |
  ssh4. ssh4 ssh8 | r4 ssh4 ssh |
  ssh4. ssh4 ssh8 | r4 ssh4 ssh |
}

oconcolo = \drummode {
	\partial 4 r4 |
  cgl4. ssh4 cgl8 | ssh4. ssh8 cgl4 |
  cgl4. ssh4 cgl8 | ssh4. ssh8 cgl4 |
  cgl4. ssh4 cgl8 | ssh4. ssh8 cgl4 |
}

itotole = \drummode {
	\partial 4 r4 |
  \parenthesize ssl8. -"touch" ssh cglo ssh |
  \parenthesize ssl ssh cglo ssh |
  \parenthesize ssl ssh cglo ssh |
  \parenthesize ssl ssh cglo ssh |
  \parenthesize ssl ssh cglo ssh |
  \parenthesize ssl ssh cglo ssh |
}

iya = \drummode {
	\partial 4 r4 |
  cglo8 ssh cglo r ssh4 | r8 ssh4 r8 ssh cglm |
  cglo8 ssh cglo r ssh4 | r8 ssh4 r8 ssh cglm |
  cglo8 ssh cglo r ssh4 | r8 ssh4 r8 ssh cglm |
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
