\version "2.18.2"

\header {
	title = "Jowo pa mi Ọṣun"
	subtitle = "for Ọṣun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
			 	d a' a g | a8 g r a( g4) a | g2 c4 f, | g4 r2. | % Ja wo pa mi se o ore yeye Ọṣun
				d4 g g f | g8 f r g( f4) g | f2 a4 e | f4 r2 a4 | % Ja wo pa mi se o ore yeye Ọṣun A
				c r c a | c r2 a4 | g r g a | g r g a | % di di di A di di di Ọṣun
				g2 g | c4 r g a | f r f g | f r2. | % ṣun se ye se oloro ye e you
			}
		}
}

text =  \lyricmode {
	Jo -- wo gba mi ṣe o o -- re ye -- ye Ọ -- ṣun
	Jo -- wo gba mi ṣe o o -- re ye -- ye Ọ -- ṣun
	A -- di di n -- di 
	A -- di di n -- di
	Ọ -- ṣun ṣe -- ke -- se o -- lo -- o (I)'ya I -- yun
}

clavebeat = \drummode {
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
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
        \line { Vague Translation (with help from Monilola Balewa): }
        \line { \null }
        \line { Ọṣun, please accept me, friend. }
		\line { Exist, exist. }
		\line { Ọṣun, ever fertile mother of pregnancy. }
        \line { \null }
        \line { Jowo means please. Ore means friend. Gba mi is accept me. }
        \line { Yeye means mother. Iya is mother. Iyun is pregnancy or pregnant. }
        \line { A di di ndi might mean exist. }
    }
}