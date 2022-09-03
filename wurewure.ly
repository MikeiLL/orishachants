\version "2.18.2"

\header {
	title = "Wúre Wúre ko're Ìrókò"
	subtitle = "for Babalúaiyé"
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
				r4. a4.~ a4 | g8 g4 a8~ a a4 g8~ | g8 g4 a8~ a a4 d,8~ | d4 r8	% E Wúre wúre ko're Ìrókò
					% Ìrókò ló̩ kẹ́kẹ́. Àràbà ilẹ̀ kò rí ààbà ní
					% Ààbà nya lu mí de
					% Olú kò so
					% Màlà te ka wo
					% A inà bú káka
			}

		}
}

text =  \lyricmode {
	E Wú -- re wú -- re ko -- 're Ì -- ró -- kò
	Ì -- ró -- kò ló̩ kẹ́ -- kẹ́. À -- rà -- bà i -- lẹ̀ kò rí àà -- bà ní
	Àà -- bà nya lu mí de
	O -- lú kò so
	Mà -- là te ka wo
	A i -- nà bú ká -- ka
}

clavebeat = \drummode {
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { Father, honored father, bind and facilitate growth.}
        \line { Father, lord of the world, punishment jumps on your child. }
        \line { Father, do good; do good. }
        \line { \null }
        \line { You are wished increased blessings. }
        \line { You are wished increased blessings. }
        \line { The owner of living may confront (you), Father on the outskirts. }
        \line { \null }
        \line { The third song is to bring down healing. }
    }
}
