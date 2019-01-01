\version "2.18.2"

melody = \relative c' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 8 b8 |
			d4 d f8 d | f4 f d8 r | f4 r2 | r2 r8 b,8 |
			d4 d f8 d | f4 f d8 r | f4 d2 | r2 r8 b8 |
			d4 d f8 d | f4 f d8 r | f4. f4 d8 | f4 f d8 r |
			f4 r8 f4 d8 | f4 f d8 r | f4 d2 | r2 r8 b8 |
			
		}
}

text =  \lyricmode {
	O -- ri -- sa mi eg -- gun -- gun ko si
	O -- ri -- sa mi eg -- gun -- gun ko si o
	O -- ri -- sa mi eg -- gun -- gun ko si
	mi eg -- gun -- gun ko si
	mi eg -- gun -- gun ko si o O
}

clavebeat = \drummode {
	\partial 8 r8 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
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