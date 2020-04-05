\version "2.18.2"

\header {
	title = "Ayílọdá Iya õ ku o"
	subtitle = "for Oyá"
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
				a4 c a | f r4. a8 | g a g2 | r2. | % Ayílọdá 'ya õ ku o
				f4 a g | f r8 g4 f8 | a4. r4 g8 | % Olómọ dé ké ẹyó. A
				f4. f4 r8 | % yà bá.
			}			
			\repeat volta 2 {
				f4 a4. a8~ | a2( g8 f) | g4 a4. g8~ | g2. % Oyá de ariwo. 
				f4 a g | f4. d4( c8) | % Ọya-n̄-sàn l'órò
			}
			\alternative {
			  { f4 f f~ | f2. | } % ṣòkòtò
			  { f4 f f~ | f r8 d'4 a8 | } % ṣòkòtò. Oyá  
			}
			\repeat volta 2 {
				c2 d8( a~) | a4 d d | % de e Oyá 
				c2 d8( a~) | % de e 
			}
			\alternative {
			  { a4 d d |  } % Oyá
			  { a4 a a |  } % Oyá  
			}
			\repeat volta 2 {
				g8 r f bes a4 | f8 r a4 a | % de a -- ri -- wo 'ya. O -- yá 
				g8 r f bes a4 | f8 r a4 a | % de a -- ri -- wo 'ya. O -- yá 
			}
		}
}

text =  \lyricmode {
	A -- yí -- lọ -- dá 
	'ya õ ku o
	O -- ló̩ -- mó̩ dé ké ẹ -- yó.
	A yà bá.
	O -- yá de a -- ri -- wo. Ọ -- ya-n̄- -- sàn l'ó -- rò ṣò -- kò -- tò.
	ṣò -- kò -- tò.
	O -- yá de e. O -- yá de e.
	O -- yá 
	e O -- yá 
	de a -- ri -- wo 'ya.
	O -- yá 
	de a -- ri -- wo 'ya.
	O -- yá 
}

clavebeat = \drummode {
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
        \line { Translation (Based on John Mason): }
        \line { \null }
        \line { Revolver who twists to create. Mother. Long life to you. }
        \line { The owner of children arrives. Shout for Joy. }
        \line { We turn off to meet her. }
    }
}