\version "2.18.2"

\header {
	title = "Ọba (o)'lù bę"
	subtitle = "for Ṣàngó"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
				\partial 4 a8 bes | % Ọba 
		\repeat volta 2 {
				c4 c r a8 bes | c4 c8 d4. c4 | a1 | r2. a8 bes | % (o)'lù bę, Ọba (o)'lù bę, Ọba yè. Ọba 
				c4 c r a8 bes | c4 c8 d4. c4 | a1 | r4. c4. bes4 |  % (o)'lù bę, Ọba (o)'lù bę, Ọba yè. Ọba 
				g2( bes) | r4. bes4. a4 | f4 f a f | % yè. Ọba yáná yáná.
				r4. 'c4. bes4 | g2( bes) | r4. bes4. a4 | f4 f a f % Ọba yè. Ọba yáná yáná.
				% Ọba ṣèrè Ṣàngó ílórò.
				% Ọba ṣèrè Ṣàngó ílórò.
			}
		\repeat volta 2 {
			 
		}
	}
}

text =  \lyricmode {
	Ọ -- ba (o)'lù bę, Ọ -- ba (o)'lù bę, Ọ -- ba yè.
	Ọ -- ba (o)'lù bę, Ọ -- ba (o)'lù bę, Ọ -- ba yè.
	Ọ -- ba yè. Ọ -- ba yá -- ná yá -- ná.
	Ọ -- ba yè. Ọ -- ba yá -- ná yá -- ná.
	Ọ -- ba ṣè -- rè Ṣàn -- gó í -- ló -- rò.
	Ọ -- ba ṣè -- rè Ṣàn -- gó í -- ló -- rò.
}

clavebeat = \drummode {
	\partial 4 r4 | 
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Father of white cloth that rises and swells (like a cloud)}
        \line { Chief of Ejibo. }
        \line { The owner of the head of advantage strikes and strikes (with a stick). }
        \line { Just behold. Ejibo's whips of profit, strike and strike. Behold. }
        \line { You clean the world. Our tribe has the tradition.  }
        \line { Our tribe has the tradition as supporters of the boa. }
    }
}