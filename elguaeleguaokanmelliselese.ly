\version "2.18.2"

\header {
	title = "Elegua Elegua O Okan Mellis Elese Elegua"
	subtitle = "for Elegba (https://youtu.be/gffZHEM7XzU?t=505)"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
			 	c8 c4 f d8 | f2. | % E -- le -- gua 'le -- gua
			 	g8 c4 a g8 | f8 c8~ c2 | % E -- le -- gua 'le -- gua o
        d8 f4 d8 d bes | % o -- kan mel -- lis e --
        c c bes c c r | % le -- se E -- le -- gua
			}
		}
}

text =  \lyricmode {
	E -- le -- gua 'le -- gua, E -- le -- gua 'le -- gua o
  o -- kan mel -- lis e -- le -- se E -- le -- gua
}

clavebeat = \drummode {
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
    }
}
