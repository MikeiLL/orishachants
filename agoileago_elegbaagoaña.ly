\version "2.18.2"

\header {
	title = "Ago Ile Ago/Eleggua Ago Aña"
	subtitle = "for Eleggua and Aña"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest of Love and Light Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {

			\repeat volta 2 {
				d4 d8 e c4 | a8 d4 r4. | d4 d8 e c4 | a8 d4 r4. | % aeo ile aeo x2
			}
			\repeat volta 2 {
				a4 a8 a c4 | a8 c4 g r8 | a4 a8 a c4 | a8 c4 g r8 | % % aeo ile aeo 'ya
			}
			\repeat volta 2 {
				r4 a8 a a a | c2. | r2. | r4 a8 d c c | a a4 f8 r4 |
				r4 a8 a a a | c2. | r2. | r4 a8 d c c | a a4 f8 r4 |
				d'8 d4 d8 c4 | a8 a4 a8 g4 | r4 f8 f g g | a a4 f8 r4 |
				d'8 d4 d8 c4 | a8 a4 a8 g4 | r4 f8 f g g | a a4 f8 r4 |
			}
		}
}

text =  \lyricmode {
	A -- go, I -- le. A -- go.
	(A -- go, I -- le. A -- go.)
	A -- go, I -- le A -- go 'ya.
	(A -- go, I -- le A -- go 'ya.)

	E -- leg -- gua a -- go. E -- leg -- gua a -- go, A -- ña.
	(E -- leg -- gua a -- go. E -- leg -- gua a -- go, A -- ña.)
	A La -- ro -- ye ma -- sa nki -- o. E -- leg -- gua a -- go A -- ña.
	(A La -- ro -- ye ma -- sa nki -- o. E -- leg -- gua a -- go A -- ña.)
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
        \line { Make way in the house/temple. Make way. }
        \line { Eleggua, make way for Aña (spirit of the drum). }
        \line { To Laroye (path of Esu who manages realm of communication) we give praise. }
        \line { Eleggua, make way for Aña. }
    }
}
