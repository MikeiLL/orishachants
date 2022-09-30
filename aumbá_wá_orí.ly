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
			\line { Translation from Ócháni Lele who has slightly different words than common: }
			\line { \null }
			\line { A nwa wa orí. A nwa wa ori. Awa o sun, awa o ma. Awa o ma ye ya o. Ará orún ta iye. }
			\line { \null }
			\line { source: https://ochanilele.wordpress.com/2017/02/08/aumba-wa-ori-song-one }
			\line { \null }
			\line { \null }
			\line { We are searching for him, we can’t see him. We are searching for him, we can’t see him.  }
			\line { We do not sleep, we do not know.  }
			\line { We do not know where he went to, we are only left with a shadow.  }
			\line { The people of heaven sell memories. }
			\line { \null }
			\line { Variations: }
			\line { \null }
        \line { ONE: Aumbá ... Ará Orún kawé. (citizens of heaven) }
        \line { TWO: ...gbogbo egun kawé. (everyone's ancestors) }
        \line { THREE: ...babá egun kawé. (paternal ancestors) }
        \line { FOUR: ...iyá egun kawé. (maternal ancestors) }
        \line { FIVE: ...mókékeré egún kawé. (ancestors who are babies/children) }
        \line { SIX: ...egun ilé kawé. (ancestors of our ocha house) }
        \line { UNTIL THE END: ...[name the individual ancestor of stone or blood] kawé. }
    }
}
