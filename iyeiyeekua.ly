\version "2.18.2"

\header {
	title = "Iye iye ekua"
	subtitle = "for Oyá"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 4. e4 c8 |
			
			\repeat volta 2 {
				% Iye iye ekua
				% Iye iye ekua
				% Oya sile konfoya o
				% Sawade oya kuero mariwo 
				% Oyade
			}
		}
}

text =  \lyricmode {
	Iye iye ekua
	Iye iye ekua
	Oya sile konfoya o
	Sawade oya kuero mariwo 
	Oyade
}

clavebeat = \drummode {
	\partial 4. r4. |
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