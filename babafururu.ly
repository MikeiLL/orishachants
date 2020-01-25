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
			 d,4. a' f4 | g( f) g r | r a \tuplet 3/2 { c a f~} | f1 | % Baba fu ruru 'lore re o
			 r4. a f4 | g( f) g f | a4. f d4~ | d1 | % ọká ñe ñe Eleyibo,
			 r4. d a'4 | g2 a4 f | a4. g a4 | f2 f4 r | % E le eri Ifa oba ti ba sawo
			 r2 \tuplet 3/2 {g4 g g} | c8 c~ c2 g4 | a4. g f4 | g1 | % Eyibo rere oba ti bawo
			 r2 a4 a | g2 f | c4. e c8 c~ | c1 | % Enu aye yawa loro
			 d4. d f4 | d2 d4. d8 | e4 e8 c4. d4~ | d1 | % E yawa loro elese okan
			}
		}
}

text =  \lyricmode {
	Ba -- ba fu ru -- ru 'lo -- re re o
	ọ -- ká ñe ñe E -- le -- yi -- bo, E le (e)ri (I)fa o -- ba ti ba sa -- wo
	E -- yi -- bo re -- re o -- ba ti ba -- wo
	E -- nu a -- ye ya -- wa lo -- ro
	E ya -- wa lo -- ro e -- le -- se  o -- kan
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
        \line { Father of white cloth that rises and swells (like a cloud)}
        \line { Chief of Ejibo. }
        \line { The owner of the head of advantage strikes and strikes (with a stick). }
        \line { Just behold. Ejibo's whips of profit, strike and strike. Behold. }
        \line { You clean the world. Our tribe has the tradition.  }
        \line { Our tribe has the tradition as supporters of the boa. }
    }
}