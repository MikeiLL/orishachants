\version "2.18.2"

\header {
	title = "Bara Súwà Yọ"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
					\partial 2 \tuplet 3/2 { d4 d d } | % Bara Sú
					g4. g4.~ g4~ | g1 | r4 d8 d f4 g | a g e c | % wà Yọ ọmọ (y)àlàwà'nà Mámà
					f a,8 a d4 d~ | d( c8 a) c2~ | c1~ | c~ | c2 r | % kē'ní ir'awo e
					d4 g f g | d1~ | d~ | d2 r | f g( | d1)~ | d~ | d2 r | f4. f8 f4 c | c1~ | c | % O Bara wá yọ Ẹkẹ, Èṣù Ọ̀dàrà
					r4 d8 d f4 g | a g e c | % ọmọ (y)àlàwà'nà Mámà
					f a,8 a d4 d~ | d( c8 a) c2~ | c1~ | c~ | % kē'ní ir'awo e
		}
}

text =  \lyricmode {
	Ba -- ra Sú -- wà Yọ ọ -- mọ (y)à -- là -- wà -- 'nà
	Má -- mà kē -- 'nya ir' -- a -- wo e
	O Ba -- ra (s')wá yọ Ẹ -- kẹ, È -- ṣù Ọ̀ -- dà -- rà
	ọ -- mọ (y)à -- là -- wà -- 'nà
	Má -- mà kē -- 'nya ir -- 'a -- wo e
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
		% >>
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
        \line { Vital force who far and wide appears; }
        \line { Child that separates, splits and divides the road. }
				\line { May you not cut the initiates mat of goodness }
				\line { Vital force who comes to deliver (us), Forked Stick, }
				\line { Èṣù, performer of wonders, }
				\line { Child that separates, splits and divides the road }
				\line { May you not cut the initiates mat of goodness }
        \line { \null }
        \line { Ọ̀dàrà may be described as a trickster road of Èṣù, who we petition, in this oriki }
        \line { not to misguide us from the path of our destiny. }
    }
}
