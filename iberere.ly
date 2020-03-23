\version "2.18.2"

\header {
	title = "Ibo Rere?"
	subtitle = "for Yemaya"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 4 c8 c | %Ibo
			
			\repeat volta 2 {
				f8 f4. e8 c | f f e4 r | % rere? Ibo rere o? 
				f8 f f f g f | e r8 r4 e8 e | % Àgò l'ònà fu a wá. Ibo 
				g g4. e8 c | d d bes2 | % rere? Ibo rere o? 
				c8 c c c d bes | c4 r c8 c | % Àgò l'ònà fu a wá. Ibo 
			}
		}
}

text =  \lyricmode {
	I -- bo re -- re? I -- bo re -- re o? À -- gò l'ò -- nà fu a wá.
	I -- bo re -- re? I -- bo re -- re o? À -- gò l'ò -- nà fu a wá.
	I -- bo 
}

clavebeat = \drummode {
	\partial 4 r4 |
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
        \line { Where is goodness? Where is goodness? }
        \line { Make way on the road of water. We look for it. }
    }
}