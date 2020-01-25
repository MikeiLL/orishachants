\version "2.18.2"

\header {
	title = "Yemaya Asesu"
	subtitle = "for Yemaya"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 2. r8 g g c g g |
			
			\repeat volta 2 {
				a2. | r8 b c d b a | g2. | r8 g g c g g |
				a2. | r8 b c d b a | g2. |
				a8 a4 a8 e g~ | g4 e8( d4. ) | r8 e g e c c | c2. |
				a'8 a4 a8 e g~ | g4 e8( d4. ) | r8 e g e c c | c2. | r8 g g c g g |
			}
		}
}

text =  \lyricmode {
	Ye -- ma -- ya A -- se -- su A -- se -- su Ye -- ma -- ya 
	Ye -- ma -- ya A -- se -- su A -- se -- su Ye -- ma -- ya 
	Ye -- ma -- ya O -- lo -- do O -- lo -- do Ye -- ma -- ya 
	Ye -- ma -- ya O -- lo -- do O -- lo -- do Ye -- ma -- ya 
	Ye -- ma -- ya A -- se -- 
}

clavebeat = \drummode {
	\partial 2. r2. |
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