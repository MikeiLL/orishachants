\version "2.18.2"

\header {
	title = "Here a Child to Save (from Ẹ kẹ́ là Èwe)"
	subtitle = "for Egun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
	piece = "rhythm: odudwa"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
				d2 d4 | f2 d4 | f2.~ | f2. | % Ẹ kẹ́ là èwe.
				a2 a4 | c2 g8 a | f2 g8 a | g a g f d c | % Ẹ kẹ́ là èwe o Ikú Olódùmarè
				d2 d4 | f2 c8 d | bes2 d4 | f2 d8 f | d2.~ | d | r | r | % Ẹ kẹ́ là èwe o kọ́ dídè o
			}
		}
}

text =  \lyricmode {
	Here a child to save.
  Child to save who may grow
  who for death is not rea -- dy a
  child to save who may grow
  I know that we go.
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
