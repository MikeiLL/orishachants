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
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
				r4. a4.~ a4 | g8 g4 a8~ a a4 g8~ | g8 g4 a8~ a a4 d,8~ | d4 r8 f8 a4 f |	% E Wúre wúre ko're Ìrókò Ìrókò
				g f g r8 f | g4 g8 g g4 r | f4 f8 a4 a d,8~ | d4 r8 f8 a4 f | % ló̩ kẹ́kẹ́. Àràbà ilẹ̀ kò rí ààbà ní Ààbà nya
				 g8 g4 g4 r f8 | g f4 g r8 g a | % lu mí de Olú kò so Màlà
				 bes a4 g( f d8)~ | d4 r8 d d4 d8 f~ | f d4 d8 g4( f8 d~) | % de ka wo A inà bú káka
				 \repeat volta 2 {
					d4 r8 d d4 d8 f~ | f d4 d8 g4( f8 d~) | % A inà bú káka
				 }
				 %
			}

		}
}

text =  \lyricmode {
	A Wú -- re wú -- re ko -- 're Ì -- ró -- kò
	Ì -- ró -- kò ló̩ kẹ́ -- kẹ́. À -- rà -- bà i -- lẹ̀ kò rí àà -- bà ní
	Àà -- bà nya lu mí de
	O -- lú kò so
	mà -- là de ká wòó
	(A i -- nà bú ká -- ka) wo
	(A i -- nà bú ká -- ka) wo
}

clavebeat = \drummode {
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 |
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
    }
}
