\version "2.18.2"

\header {
	title = "A Wa Ni Ye O Ògún Mariwo"
	subtitle = "for Ògún"
	copyright = "© Public Domain"
	piece = "rhythm: chachalokofu (slow)"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f~ | f1 | % A wa ni e o Ògún Mariwo
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f | d8 f4 f8 d4 d8 c | % A wa ni e o Ògún Mariwo Ògún o fomo de
				r4. f8 a4 f8 f | d4 d r f8 f | % Onile Abe re
				f4 a c a~ | a f f2 |  % Mariwo Ògún de Bamba
			}
			\repeat volta 2 {
				r8 f4 a8 d4 c | a8 a4 c c f,8~ | f4 r2 f4 | % A wá ni yẹ́ Kó má sé yà (a)'wo. A
				g4 g g2 | r8 f4 g8 a4 f | d8 d4 f f c8~ | c2 d4 f~ | f8 f4 f8~ f2 | % wá ni yẹ́ A wá ni yẹ́ Kó má sé yà (a)'wo. A wá ni yẹ́
			}
			\repeat volta 2 {
				f4. d8 c4 d | f2 f2 | g8 a4 a g a8~ | a8 a4 g4. r4 | % E Mà -- rì -- wò yan yan Áárẹ ré Áárẹ ré o
			}
			\repeat volta 2 {
				d' c a f | d'4. c a4 | r4. f f4~ | f1 | % Ọ go mo dá nṣé le yo. (Ọ go)
				d'4 c a f | d'4. c a4 | r4. f f4~ | f2. f4 | % Ọ go mo dá nṣé le yo. (Ọ go) Ò --
				a g a g8. g16 | f4 d f4. d8~ | d4. f f4 | % gún Áá -- rẹ ré de a wá me dá (Ọ go
				d d f4. f8 | % mo dá nṣé le)
			}
			\repeat volta 2 {
				g2.~ g8( d | c4 f~ f4.) d8( | c1) | r | % Eè -- kwa!
				g'2.~ g8( d | c4 f) c r | % Eè -- kwa!
				g' g a g | d f c c | d r8 d d4 f | c c c r | % Ké -- yẹ́ ké -- yẹ́ mo dá nṣé Ò -- gún A -- là -- dó (L)Ò -- rì -- ṣa
			}
			r4. c8 c4 c |
			\repeat volta 2 {
				bes d g, g | c c c c | % (Mà -- rì -- wò mo dá nṣé lo A -- lá -- gbẹ̀ -- dẹ)
				c g' f f | d4. c8 c4 c | % Mo dá nṣé Ò -- gún
			}
		}
}

text =  \lyricmode {
	A wá ni yẹ́ o Ò -- gún Mà -- rì -- wò
	A wá ni yẹ́ o Ò -- gún Mà -- rì -- wò
	Ò -- gún o fo -- mo de O -- ni -- le A -- be re
	Mà -- rì -- wò Ò -- gún dé Bam -- ba.

	A wá ni yẹ́ Kó má sé yà (a)'wo.
	(A wá ni yẹ́ A wá ni yẹ́ Kó má sé yà (a)'wo. A wá ni yẹ́)

	(E Mà -- rì -- wò yán yá) Áá -- rẹ ré Áá -- rẹ ré o

	Ọ go mo dá nṣé le yo. (Ọ go)
	Ọ go mo dá nṣé le yo. (Ọ go)
	Ò -- gún Áá -- rẹ -- 'ré de a wá me dá
	(Ọ go mo dá nṣé le)

	Eè -- kwa! Eè -- kwa!
	Ké -- yẹ́ ké -- yẹ́ mo dá nṣé
	Ò -- gún A -- là -- dó (L)Ò -- rì -- ṣa

	(Mà -- rì -- wò mo dá nṣé lo A -- lá -- gbẹ̀ -- dẹ)
	Mo dá nṣé Ò -- gún (Mà -- rì -- wò
}

clavebeat = \drummode {
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |


	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |

	r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |


	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r |
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
        \line { \null }
        \line { \null }
        \line { \null }
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { We come to honor you, Ògún of the Palm Fronds. }
        \line { Ògún you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ògún arrives, the stout one.}
        \line { \null }
				\line { There is a recording of Lazaro Ros doing this song, title Awaniyeo, Awanile... }
    }
}
