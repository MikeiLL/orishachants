\version "2.18.2"

\header {
	title = "Baba ẹ Baba soròso"
	subtitle = "for Babalúaiyé"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {			
			\repeat volta 2 {
				r4 a a | c2 r4 | r d c | a8 c4 a4 r8 | % Baba ẹBaba soròso
				r4 a a | c2 r4 | r d c | a8 c4 a4 r8 | % Baba ẹBaba soròso
				d8 d d d c4~ | c8 a4 a f8 | g4 f f | g8 a4 g8 a4 | % Babalúaiyé 'yà nfò 'mo de Baba ş'ire ş'ire
			}		
			\repeat volta 2 {
				g8 g4 g8 g4 | c,8 c4 d f8 | c8 r4 d8( f4) | g8 d4 f4. | % Wúre wúre Alánbẹlè kò Baba lóde
			}
		}
}

text =  \lyricmode {
	Ba -- ba ẹ Ba -- ba so -- rò -- so
	Ba -- ba ẹ Ba -- ba so -- rò -- so
	Ba -- ba -- lú -- ai -- yé 'yà nfò 'mo de
	Ba -- ba ş'i -- re ş'i -- re
	Wú -- re wú -- re A -- lán -- bẹ lè kò Ba -- ba ló -- de
}

clavebeat = \drummode {
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
        \line { Father, honored father, bind and facilitate growth.}
        \line { Father, lord of the world, punishment jumps on your child. }
        \line { Father, do good; do good. }
        \line { \null }
        \line { You are wished increased blessings. }
        \line { You are wished increased blessings. }
        \line { The owner of living may confront (you), Father on the outskirts. }
    }
}