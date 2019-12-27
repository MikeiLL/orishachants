\version "2.18.2"

\header {
	title = "Iwéré Ijéjé"
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
			 g8. c c8 g4 a | f2. r4 | % Iwéré Ijéjé
			 g8. c c8 g4 a | f8. g a8 g4 f8 d | % Iwéré Ijéjé Olúwa mí Ọ
			 c8. g' g8~ g2 | r8. g a8 g4 f8 d | % bàtálá Olúwa mí Ol
			 c8. e c8~ c2 |  % órìṣà
			 d8. d g8 f4 g | d8. d g8 f4 g | % Ìbàri Babà Ìbàri Yeye
			 c8. g a8 g4( a) | a8. g a8 g4 a | % Ọbàtálá ká'ṣọ. Ma mélo!
			 c8. g a8 g8 g a r | % Ení kí Àlàwà'ṣẹ
			 d,8 r4 e8 d4 e8 d | c8 r4 g'8 a g f4 | % Ol'omi ọ sá, Olófin ọ
			 d8. f f8~ f2 | % ba nla yè.
			}
		}
}

text =  \lyricmode {
	I -- wé -- ré I -- jé -- jé
	I -- wé -- ré I -- jé -- jé
	O -- lú -- wa mí Ọ -- bà -- tá -- lá
	O -- lú -- wa mí Ol -- ó -- rì -- ṣà
	Ì -- bà -- ri Ba -- bà Ì -- bà -- ri Ye -- ye
	Ọ -- bà -- tá -- lá__ ká' -- ṣọ. Ma mé -- lo!
	E -- ní kí À -- là -- wà' -- ṣẹ
	O -- l'o -- mi ọ sá, O -- ló -- fin ọ -- ba nla yè.
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
        \line { My lord, órìṣà. Homage to Father. Homage to Mother. }
        \line { The King of the White Cloth counts cloth. }
        \line { Indeed, how many! }
        \line { The one saluted, \italic { White cloth has authority}. }
        \line { Water of the lagoon. Owner of the palace.}
        \line { The king liveth. }
    }
}