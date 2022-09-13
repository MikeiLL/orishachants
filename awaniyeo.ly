\version "2.18.2"

\header {
	title = "A Wa Ni Ye O Ogun Mariwo"
	subtitle = "for Ogun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			r2. | r4 f8 a g a | % A wa ni e
			\repeat volta 2 {
				g2.~ | g8 r f a f f | f2.~ | f8 r f a g a | % o Ogun Mariwo A wa ni e
				g2.~ | g8 r f a f f | f r f a a a | % o Ogun Mariwo Ogun ofo
				f d d f f f | d4 d8 r f f | % mo de Onile Abe re Mari
				f4 a8 c4 a8~ | a4 g4. f8~ | f4 f8 a g a |% wo Ogun de Bamba A wa ni e
			}
			\repeat volta 2 {
				g4 a8 a g4 | a8 a4 g8 r4 | % Aa -- re aa -- re o
				f4 d8 d d4 | f4. f8 r4 | % (E Ma -- ri -- wo yan yan)
			}

			\repeat volta 2 {
				g2 f4 | d8 d4 f4. | % E aa -- re -- re o
	 			g4 a8 a g4 | a8 a4 g8 r4 | % aa -- re -- re aa -- re -- re o
			}
		}
}

text =  \lyricmode {
	A wa ni e o O -- gun Ma -- ri -- wo
	A wa ni e o O -- gun Ma -- ri -- wo
	O -- gun o fo -- mo de O -- ni -- le A -- be re
	Ma -- ri -- wo O -- gun de Bam -- ba. A wa ni e

	Aa -- re -- re aa -- re -- re o (E Ma -- ri -- wo yan yan)

	E aa -- re -- re o
	(aa -- re -- re aa -- re -- re o)
}

clavebeat = \drummode {
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
        \line { We come to honor you, Ogun of the Palm Fronds. }
        \line { Ogun you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ogun arrives, the stout one.}
    }
}
