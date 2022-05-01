\version "2.18.2"

\header {
	title = "Aso Kere Kere Me Ye"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2022 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 2 d4 d8 f~ | % Aso
			\repeat volta 2 {
			 	f8 f4 f8 f4 d | c2 bes4 bes8 c~ | c c4 d8 bes4 d | % Kere Kere Me Ye Alewana ki la pon...
			}
			\alternative {
			  {
          c2 d4 d8 f | % se Aso ke
        }
			  {
          c4 r8 d4. d4 | % se Aso
        }
			}
			\repeat volta 2 {
          f8 f4 f4.~ f4 | r d d c8 d~ | d d d d d4 bes | % ke re re ago Elegba olokun ashe
			}
			\alternative {
				{
					c r8 d4. d4 | % ṣe A -- so
				}
				{
          c2 e4 g | % ṣe Eleg
        }
			}
			\repeat volta 2 {
				c, r8 e4. g4 | c, r e g8 g~ | g g4 g8 f4 a | g4. e g4 | % ba Elegba ase Kere Kere me ye Elegba Eleg...
				c, r8 e4. g4 | c, r c d8 e~ | e e4 e8 d4 d | c4. e g4 % ba Alewana ki la ponse Eleg...
			}
		}
}

text =  \lyricmode {
	A -- so ke -- re ke -- re me ye
  A -- la -- wa -- na ki la pon ṣe
	A -- so ke
	ṣe. A -- so ke -- re -- re
	A -- go E -- leg -- ba o -- lo -- kun a -- ṣe
  A -- so
  ṣe. E -- leg -- ba E -- leg -- ba
  A -- so ke -- re ke -- re me ye
  E -- leg -- ba E -- leg -- ba
  A -- la -- wa -- na ki la pon ṣe
	E -- leg
}

clavebeat = \drummode {
	\partial 2 r2 |
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
