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
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 4 a8 a | % Wẹ́ mi l'è...
			\repeat volta 2 {
			 	a4 f8 a a g4 f8( d) f4 r8 | % èrè (Ẹ̀) 'lúbẹ, o̩ mo 'yó
        r8 a c f, a g4 f8( d) f8( d) r | % E̩ wẹ́ wẹ́ mi o̩ mo 'yó.
        d f d g g d4 d8( c) d a' a | % Ṣàn gó, ko wà 'yè. O̩ mo 'yó Wẹ́ mi
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
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
}

oconcolo = \drummode {
	\partial 4 r4 |
  sn4. hh4 sn8 hh4. hh8 sn4 |
  sn4. hh4 sn8 hh4. hh8 sn4 |
  sn4. hh4 sn8 hh4. hh8 sn4 |
}

itotole = \drummode {
	\partial 4 r4 |
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
}

iya = \drummode {
	\partial 4 r4 |
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
  cl4. cl4 cl4. cl4 cl |
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
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"oconcolo"
      \oconcolo
		>>
    \new Staff  {
    	\new Voice = "one" { \melody }
      \new Voice = "two" { \oconcolo }
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
