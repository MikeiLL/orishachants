\version "2.18.2"

\header {
	title = "Bara Súwà Yọ"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
					% Bara Súwà Yọ ọmọ yàlàwà'nà
					% Mámà kē'ní ir'awo e
					% O Bara wá yọ Ẹkẹ, Èṣù Ọ̀dàrà
					% ọmọ yàlàwà'nà
					% Mámà kē'ní ir'awo e
			}
		}
}

text =  \lyricmode {
	Ba -- ra Sú -- wà Yọ ọ -- mọ yà -- là -- wà -- 'nà
	Má -- mà kē -- 'ní ir' -- a -- wo e
	O Ba -- ra wá yọ Ẹ -- kẹ, È -- ṣù Ọ̀ -- dà -- rà
	ọ -- mọ yà -- là -- wà -- 'nà
	Má -- mà kē -- 'ní ir -- 'a -- wo e
}

clavebeat = \drummode {

}

\score {
  <<
  	% \new DrumStaff \with {
  	% 	drumStyleTable = #timbales-style
  	% 	\override StaffSymbol.line-count = #1
  	% }
  	% 	<<
  	% 	\set Staff.instrumentName = #"clave"
		% \clavebeat
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
        \line { Vital force who far and whide appears; }
        \line { Child that separates, splits and divides the road. }
				\line { May you not cyt the initiates mat of goodness }
				\line { Wital force who comes to deliver (us), Forked Stick, }
				\line { Èṣù, performer of wonders, }
				\line { Child that separates, splits and divides the road }
				\line { May you not cyt the initiates mat of goodness }
    }
}
