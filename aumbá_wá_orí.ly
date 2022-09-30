\version "2.18.2"

\header {
	title = "Aumbá Wá Orí"
	subtitle = "for Eggun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 4 a8( e') | % Aum
			\repeat volta 2 {
			 	d2 e8 c | d r r4 a8( e') | % bá wá orí, aum
				d2 e8 c | d( c) r a b g | a r4 a8 d c | % bá wá orí, awa osún, awa o
				d r4 e8 g f | g2 a8 f | d4. e8 g g | % má, lerí omá, leyawo, Ará O
				d2 e8( c) | d8 r4. a8( e') | % rún kawé
			}
		}
}

text =  \lyricmode {
	Aum -- bá wá o -- rí,
	aum -- bá wá o -- rí,
	a -- wa o -- sún, a -- wa o -- má, le -- rí o -- má, le -- ya -- wo,
	A -- rá O -- rún ka -- wé
	Aum
}

clavebeat = \drummode {
	\partial 4 r4 |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
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
    }
}
