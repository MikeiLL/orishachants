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
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {			
			\repeat volta 2 {
				a4 c a | f r4. a8 | g a g2 | r2. | % Ayílọdá 'ya õ ku o
				f4 a g | f r8 g4 f8 | a4. r4 g8 | % Olómọ dé ké ẹyó. A
				f4. f4 r8 | % yà bá.
			}
		}
}

text =  \lyricmode {
	A -- yí -- lọ -- dá 
	'ya õ ku o
	O -- ló̩ -- mó̩ dé ké ẹ -- yó.
	A yà bá.
}

clavebeat = \drummode {
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
        \line { Translation (Based on John Mason): }
        \line { \null }
        \line { Revolver who twists to create. Mother. Long life to you. }
        \line { The owner of children arrives. Shout for Joy. }
        \line { We turn off to meet her. }
    }
}