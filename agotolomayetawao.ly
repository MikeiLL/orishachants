\version "2.18.2"

\header {
	title = "Ago. To yo ma le kawa o"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			
			\repeat volta 2 {
				r4. c4 f8~ | f c8 d c4 g8 | c8 c g2 | f8 g4 g r8 | 
				r4. g4 c8~ | c g a g4 f8 | a a g f f4 | r4. a8 g a |
				f f d f f r | r a c d4 c8 | g a f2 | d8 f4 f r8 | 
			}
		}
}

text =  \lyricmode {
	A -- go. To yo ma le ka -- wa o o le le
	A -- go. To yo ma le ka -- wa fu -- mi e
	I -- ya n' so -- ro n' ko -- to
	O -- mo lo -- wo se i -- re 
	o le le
}

clavebeat = \drummode {
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