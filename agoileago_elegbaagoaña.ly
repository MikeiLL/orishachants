\version "2.18.2"

\header {
	title = "Ago Ile Ago/Elegua Ago Aña"
	subtitle = "for Yemaya"
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
				f4 f8 g ees4 | c8 f4 r4. | f4 f8 g ees4 | c8 f4 r4. | % ago ile ago x2
				c4 c8 c ees4 | c8 ees4 bes r8 | c4 c8 c ees4 | c8 ees4 bes r8 | % % ago ile ago 'ya
			}
		}
}

text =  \lyricmode {
	A -- go, I -- le. A -- go.
	(A -- go, I -- le. A -- go.)
	A -- go, I -- le A -- go 'ya.
	(A -- go, I -- le A -- go 'ya.)
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Where is goodness? Where is goodness? }
        \line { Make way on the road of water. We look for it. }
    }
}
