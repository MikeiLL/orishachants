\version "2.18.2"

\header {
	title = "Ago Elegba E"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
			 	% Ago Elegba e
				% Ago Elegba e
				% Esu Baba emi e
				% Esu Baba emi e
				% Awa la temu e
				% Awa la temu e
				% A fe gi so fi e
				% A fe gi so fi e
				% Iya Olokun e
				% Iya Olokun e
				% Iya Ore Fa e
				% Iya Ore Fa e
			}
		}
}

text =  \lyricmode {
	Ago Elegba e
	Ago Elegba e
	Esu Baba emi e
	Esu Baba emi e
	Awa la temu e
	Awa la temu e
	A fe gi so fi e
	A fe gi so fi e
	Iya Olokun e
	Iya Olokun e
	Iya Ore Fa e
	Iya Ore Fa e
}

clavebeat = \drummode {
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r | 
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
    }
}