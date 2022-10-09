\version "2.18.2"

\header {
	title = "Bárí (I)'ba Ọgé dé máā"
	subtitle = "for Babalúayé"
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
					c8 c f d f4 | d8 f16( g) r8 f4 d8 | % Bá rí (I)'ba Ọ gé dé máā Mo lé
					f4 g( d) | f8 f4 f4 r8 | % yá nsá. Mo lè yà
				 }
					f8 f r f f r | d f16( g8.) f4 d8 | % Ọ kan ọ kan ọ kan Mo lé
					f4 g( d) | f8 f4 f4 r8 | % yá nsá. Mo lè yà
					f8 f r f f r | d f16( g8.) f4 d8 | % Dí nyà Dí nyà Dí nyà Mo lé
					f4 g( d) | f8 f4 f4 r8 | % yá nsá. Mo lè yà
					f8 f r f f r | d f16( g8.) f4 d8 | % Gbā 'ké gbá 'ké gbá 'ké Mo lé
					f4 g( d) | f8 f4 f4 r8 | % yá nsá. Mo lè yà
				\repeat volta 2 {
					bes,8 d f bes bes4 | a8 f4 a8( g) a | f2.~ | f2 r4 | % Àgádágodo àwá érí so.
					bes,8 d8 f bes bes4 | a8 f4 a8( g) a | f2 ees4 | ees8 bes4 bes8 r4 | % Àgádágodo àwá érí so. Ore Baba.
					f'8 f g ees f4 | f8 f4 g8( f) g | ees2 d4 | d8 bes4 bes8 r4 | % Babalúayé àwá érí so. Ore Baba.
				}
			}
}

text =  \lyricmode {
	Bá rí (I)'ba Ọ gé dé máā
	(Mo lé yá nsá. Mo lè yà)
	Ọ kan ọ kan ọ kan
	(Mo lé yá nsá. Mo lè yà)
	Dí nyà Dí nyà Dí nyà
	(Mo lé yá nsá. Mo lè yà)
	Gbā 'ké gbá 'ké gbá 'ké
	(Mo lé yá nsá. Mo lè yà)

	À -- gá -- dá -- go -- do à -- wá é -- rí so.
	À -- gá -- dá -- go -- do à -- wá é -- rí so. O -- re Ba -- ba.
	Ba -- ba -- lú -- a -- yé à -- wá é -- rí so. O -- re Ba -- ba.

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
        \line { There is a recording of Zion Trinity doing this song. }
        \line { \null }
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Meet and discover the king. He who curs arrives always. }
        \line { I know to turn aside avoiding (him). I will turn aside. }
        \line { He is austere, he is peevish, he drips. }
        \line { Block of suffering (x3) }
        \line { Clean the cut. (x3) }
        \line { Strive for firmness, strive for firmness to block suffering. }
        \line { \null }
        \line { The padlock ties our heads. Father favor me. }
        \line { Father, lord of the world we are tied down. Father favor me. }
        \line {  }
    }
}
