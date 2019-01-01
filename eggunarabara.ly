\version "2.18.2"

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			e4. c4. a4 | c4 c e r | e4. c4. a4 | c4 c e r | 
			e4. c4. a4 | c4 d c r | e4. c4. a4 | c4 d c a | 
			c c ees r | g4.( ees ) a,4 | c c c r | ees4.( c ) a4 |
			c c c ees | c4. c g4 | a a a r | r2. c4 |
			ees ees ees r | g4.( ees ) a,4 | c c c r | ees4.( c ) a4 |
			c c c ees | c4. c g4 | a a a r | r1 |
		}
}

text =  \lyricmode {
	Eg -- gun a -- ra -- ba -- ra
	Eg -- gun a -- ra -- ba -- ra
	Eg -- gun a -- ra -- ba -- ra
	Eg -- gun a -- ra -- ba -- ra
	A -- ra -- ba -- ra e
	A -- ra -- ba -- ra e
	A -- ra -- ba -- ra eg -- gun -- gun a -- ra -- ba -- ra
	A -- ra -- ba -- ra e
	A -- ra -- ba -- ra e
	A -- ra -- ba -- ra eg -- gun -- gun a -- ra -- ba -- ra
}

clavebeat = \drummode {
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
	cl4. cl8 r4 r8 cl8 | r4 cl cl r | cl4. cl8 r4 r8 cl8 | r4 cl cl r |
}

\score {
  <<
  	\new DrumStaff \with {
  		drumStyleTable = #timbales-style
  		\override StaffSymbol.line-count = #1
  		\override BarLine.bar-extend = #'(-1 . 1)
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