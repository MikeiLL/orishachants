\version "2.18.2"

\header {
	title = "Ayílọdá Iya õ ku o"
	subtitle = "for Oyá"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {			
			\repeat volta 2 {
				a4. a f4 | r a d8 c4. | % Ò̩ṣọ́ọ̀sì Ayílọ́ọ̀
				g2. f8 f | d f4 f8 r2 | % dá Màlàmàlà dé.
			}
		}
}

text =  \lyricmode {
	Ò̩ -- ṣọ́ọ̀ -- sì A -- yí -- lọ́ọ̀ -- dá 
	Mà -- là -- mà -- là dé.
}

clavebeat = \drummode {
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Ò̩ṣọ́ọ̀sì, revolver who turns away famine, }
        \line { the dazzling one arrives. }
    }
}