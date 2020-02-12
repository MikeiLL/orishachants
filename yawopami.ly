\version "2.18.2"

\header {
	title = "Ja wo pa mi se o"
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
			 	d g g f | g8 f r g( f4) g | g2 c4 f, | g4 r2. | % Ja wo pa mi se o ore yeye Ọṣun
				d4 g g f | g8 f r g( f4) g | f2 a4 d, | f4 r2 a4 | % Ja wo pa mi se o ore yeye Ọṣun A
				c r c( a) | c r2 a4 | c r c( a) | g r2 d4 | % di di di A di di di Ọ
				g r g g | g r a g | f r f g | f r2. | % ṣun se ye se oloro ye e you
			}
		}
}

text =  \lyricmode {
	Ja wo pa mi se o o -- re ye -- ye Ọ -- ṣun
	Ja wo pa mi se o o -- re ye -- ye Ọ -- ṣun
	A di di_ di 
	A di di di
	Ọ -- ṣun se ye se o -- lo -- ro ye e you
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
        \line { Translation: }
        \line { \null }
    }
}