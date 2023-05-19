\version "2.18.2"

\header {
	title = "Wẹ́ mi l'èrè"
	subtitle = "for Ṣàngó"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2023 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 4. a8 a a~ | % Wẹ́ mi l'è...
			\repeat volta 2 {
			 	a f8 a a g4 f8( d) f4 r | % èrè (Ẹ̀) 'lúbẹ, o̩ mo 'yó
        a8 c f, a g4 f8( d) f8( d) r d | % E̩ wẹ́ wẹ́ mi o̩ mo 'yó. Ṣàn
        f d g g d4 d8( c) d a' a a~ | % gó, ko wà 'yè. O̩ mo 'yó Wẹ́ mi
			}
		}
}

text =  \lyricmode {
	Wẹ́ mi l'è -- rè (Ẹ̀)'lú -- bẹ, o̩ mo 'yó
  E̩ wẹ́ wẹ́ mi o̩ mo 'yó.
  Ṣàn -- gó, ko wà 'yè. O̩ mo 'yó Wẹ́ mi l'è

}

clavebeat = \drummode {
	\partial 4. r4. |
  r4 cl cl r8 cl r cl r cl |
  r4 cl cl r8 cl r cl r cl |
  r4 cl cl r8 cl r cl r cl |
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
