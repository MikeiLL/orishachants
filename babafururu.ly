\version "2.18.2"

\header {
	title = "Baba Fu Ruru"
	subtitle = "for Ọbàtálá"
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
			 d4. a f4 | g( f) g r | r a \tuplet 3/2 { c a f~} | f1 | % Baba fu ruru 'lore re o
			 % ọká ñe ñe Eleyibo, E le eri Ifa oba ti ba sawo
			 % Eyibo rere oba ti bawo
			 % Enu aye yawa loro
			 % E yawa loro elese okan
			}
		}
}

text =  \lyricmode {
	Ba -- ba fu ru -- ru 'lo -- re re o
	ọ -- ká ñe ñe E -- le -- yi -- bo, E le eri (I)fa o -- ba ti ba sa -- wo
	E -- yi -- bo re -- re o -- ba ti ba -- wo
	E -- nu a -- ye ya -- wa lo -- ro
	E ya -- wa lo -- ro e -- le -- se o -- kan
}

clavebeat = \drummode {
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | cl8. cl16 r8. cl16 r8 cl8 cl r | 
	cl8. cl16 r8. cl16 r8 cl8 cl r | 
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
        \line { Gentleness, calmness. Gentleness, calmness.}
        \line { My lord, Ọbàtálá.  My lord, órìṣà. Homage to Father. Homage to Mother. }
        \line { The child of the King of the White Cloth counts cloth. }
        \line { Indeed, how many! }
        \line { The one saluted, \italic {  "\"White cloth has authority\"."} }
        \line { Water of the lagoon. Owner of the palace, the king liveth. }
    }
}