\version "2.18.2"

\header {
	title = "A Wa Ni Ye O Ògún Mariwo"
	subtitle = "for Ògún"
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
				g2.~ | g8 r f a f f | f2.~ | f8 r f a g a | % o Ògún Mariwo A wa ni e
				g2.~ | g8 r f a f f | f r f a a a | % o Ògún Mariwo Ògún ofo
				f d d f f f | d4 d8 r f f | % mo de Onile Abe rẹ Mari
				f4 a8 c4 a8~ | a4 g4. f8~ | % wo Ògún de Bam...
			}
			\alternative {
			  {
          f4 f8 a g a |% ba A wa ni e
        }
			  {
          f4 r4. f8 | % ba A
        }
			}

			\repeat volta 2 {
				a8 a a2~ | a8. g bes g | e e g e | d2 r8 c8 | % wá ni yẹ́ Áá -- rẹ -- rẹ Kó má sé yà (a)'wo
				e8 e e2~ | e8. g c a | g g c a | a8( f2) r8 | % A wá ni yẹ́ Áá -- rẹ -- rẹ Kó má sé yà (a)'wo
			}

			\repeat volta 2 {
				g4 a8 a g4 | a8 a4 g8 r4 | % Áá -- rẹ Áá -- rẹ o
				f4 d8 d d4 | f4. f8 r4 | % (E Ma -- ri -- wo yan yan)
			}

			\repeat volta 2 {
				g2 f4 | d8 d4 f4. | % E Áá -- rẹ -- rẹ o
	 			g4 a8 a g4 | a8 a4 g8 r4 | % Áá -- rẹ -- rẹ Áá -- rẹ -- rẹ o
			}
		}
}

text =  \lyricmode {
	A wá ni yẹ́ o Ò -- gún Ma -- ri -- wo
	A wá ni yẹ́ o Ò -- gún Ma -- ri -- wo
	Ò -- gún o fo -- mo de O -- ni -- le A -- be rẹ
	Ma -- ri -- wo Ò -- gún de Bam -- ba. A wa ni e

	-- ba. (A

	wá ni yẹ́ Áá -- rẹ -- rẹ Kó má sé yà (a)'wo
	A wá ni yẹ́) Áá -- rẹ -- rẹ Kó má sé yà (a)'wo

	Áá -- rẹ -- rẹ Áá -- rẹ -- rẹ o (E Ma -- ri -- wo yan yan)

	E Áá -- rẹ -- rẹ o
	(Áá -- rẹ -- rẹ Áá -- rẹ -- rẹ o)
}

clavebeat = \drummode {
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	r8 cl r cl r4 |

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
        \line { We come to honor you, Ògún of the Palm Fronds. }
        \line { Ògún you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ògún arrives, the stout one.}
        \line { \null }
        \line { We come to honor you, chief of Ìré. }
        \line { Do not block or turn aside initiates. }
        \line { \null }
        \line { In second song, Akpwon sings full song first time, then just the last part (not in parens) }
    }
}
