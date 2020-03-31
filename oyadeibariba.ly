\version "2.18.2"

\header {
	title = "Ọyá Dé. Ibàrìbá Ṣé Kè Ṣé"
	subtitle = "for Oyá"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 4. a4 e8 | % Ọyá
			
			\repeat volta 2 {
				g2 r4 | e8 e e e c d | e4. r | r a4 e8 | % dé. Ibàrìbá ṣé kè ṣé. Oyá 
				g2 r4 | e8 e e e c d | e4. r8 d e | % dé. Ibàrìbá ṣé kè ṣé. Àgò 
				a g e g4 e8 | c4 r2 | % Àgò ilé; àgò lónà.
				d8 d d d4 e8 | c4 d8 a4 c8 | r2. | r4. a'4 e8 |% Ọyá dé ire o. Ọyá dé.  Ọyá
			}
		}
}

text =  \lyricmode {
	Ọ -- yá dé. I -- bà -- rì -- bá ṣé kè ṣé.
	Ọ -- yá dé. I -- bà -- rì -- bá ṣé kè ṣé.
	À -- gò i -- lé; à -- gò ló -- nà.
	Ọ -- yá dé i -- re o. Ọ -- yá dé. Ọ -- yá 
}

clavebeat = \drummode {
	\partial 4. r4. |
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
        \line { Translation (based on John Mason: }
        \line { \null }
        \line { The tearer arrives. }
        \line { The destructive kinswoman wells up to }
        \line { destructively spread and snap things. }
        \line { Make way in the house. Make way on the road. }
        \line { The tearer arrives with goodness. The tearer arrives. }
    }
}