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

			}

		}
}

text =  \lyricmode {
	E Wúre wúre ko're Ìrókò
	Ìrókò ló̩ kẹ́kẹ́. Àràbà ilẹ̀
}

clavebeat = \drummode {

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
