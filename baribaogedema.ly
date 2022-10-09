\version "2.18.2"

\header {
	title = "Wúre Wúre ko're Ìrókò"
	subtitle = "for Ṣàngó"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
					c8 c f d f4~ | f8 d8 f16( g) f4 d8 | % Bá rí (I)'ba Ọ gé dé máā Mo lé
					% yá nsá. Mo lè yà
					% Ọ kan ọ kan ọ kan
					% Mo lé yá nsá. Mo lè yà
					% Dí nyà Dí nyà Dí nyà
					% Mo lé yá nsá. Mo lè yà
					% Gbā 'ké gbá 'ké gbá 'ké
					% Mo lé yá nsá. Mo lè yà

					% Àgádágodo àwá érí so. Ore Baba.
					% Babalúayé àwá érí so. Ore Baba.
				 }
				 %
			}

		}
}

text =  \lyricmode {
	Bá rí (I)'ba Ọ gé dé máā
	Mo lé yá nsá. Mo lè yà
	Ọ kan ọ kan ọ kan
	Mo lé yá nsá. Mo lè yà
	Dí nyà Dí nyà Dí nyà
	Mo lé yá nsá. Mo lè yà
	Gbā 'ké gbá 'ké gbá 'ké
	Mo lé yá nsá. Mo lè yà

	Àgádágodo àwá érí so. Ore Baba.
	Babalúayé àwá érí so. Ore Baba.

}

clavebeat = \drummode {
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
        \line { There is a recording of Abbilona doing this song, title Rezos a Shango. }
        \line { In the refrain, akpwon repeats the màlà te ka wo, interweaving with coro. }
        \line { Only the wo of that interwoven part is engraved above. }
        \line { \null }
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Implore blessings. Implore blessings. But not the blessings of Ìrókò. }
        \line { Ìrókò is ground by the borer beatle. The cotton tree in the earth }
        \line { does not see the magic staple tearing it. }
        \line { The magic staple tearing it, tearing it violently. }
        \line { The Chief who did not hang, dazzling whiteness, arrives. }

        \line { The chant: Dazzling whiteness arrives. Behold. (The fire roars violently.) }

        \line { \null }
        \line { Ayala and wòó may substitute for A at beginning, Ṣàngó for màlà in chant.) }
    }
}
