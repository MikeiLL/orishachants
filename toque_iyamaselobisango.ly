\version "2.18.2"

\header {
	title = "Toque Ìyá Máāsè"
	subtitle = "for Ṣàngó"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 4 g8 c | % Ìyá
			\repeat volta 2 {
				g4 g8 a f d | g4 r4 g8 c | %  Máāsè ló bí Ṣàngó Ìyá
				g4 g8 a f d | g( f ) r g g g | % Máāsè ló bí Ṣàngó Gbogbo a
				a f d g16 f f4 | f4. r8 d8 f | % rá yẹ̀ oní 'kú ele. Ìyá
				c4 c8 d bes g | c4 r8 d d d | % Máāsè ló bí Ṣàngó Gbogbo a
				f f c d16 c c4 | c8 r4. d8 d |% rá yẹ̀ oní 'kú ele
			}
		}
}

text =  \lyricmode {
	Ì -- yá Máā -- sè ló bí Ṣàn -- gó
	Ì -- yá Máā -- sè ló bí Ṣàn -- gó
	Gbo -- gbo a -- rá yẹ̀ o -- ní 'kú e -- le
	Ì -- yá Máā -- sè ló bí Ṣàn -- gó
	Gbo -- gbo a -- rá yẹ̀ o -- ní 'kú e -- le
	Ì -- yá
}

clavebeat = \drummode {
	\partial 4 r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
}

oconcolo = \drummode {
	\partial 4 r4 |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8 cglo16 ssh8. cglo ssh |
  cglo8. ssh cglo8 cglo16 ssh8. |
  ssh8 cglo4 ssh8 cglo cglo | ssh cglo4 << ssh8 cglo >> r cglo |
}

itotole = \drummode {
	\partial 4 r4 |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh4. ssh8 cglo cglo |
  ssh ^"variation" cglm cglm ssh8 cglo cglo |
  \parenthesize cgl8 ^"touch" ssh cglo ssh cglm ssh | \parenthesize cgl8 ssh cglo ssh cglm ssh |
}

iya = \drummode {
	\partial 4 r4 |
  r8 r8. ssh16 r16 cglo8. ssh8 |
  r8 ^"variations" r8. ssh16 cglo8 ssh ssh |
  r4 cglo8 cglo16 cglo ssh8 ssh |
  r8 ssh8. ssh16 r8 ssh ssh |
  r8 ssh ssh r16 ssh8. ssh8 |
  cglo8 r8. ssh16 cglo8 r ssh |
  r8 ssh ssh cglo16 cglo8 cglo16 cglo8 |
  r8 r8. ssh16 r16 cglo8. ssh8 |
  << ssh4 cglo >> ssh ssh8 cglo | << ssh4 cglo >> << ssh8 cglo >> cglo ssh cglo |
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

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Oconcolo"
      \oconcolo
		>>

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Itotole"
      \itotole
		>>

  	\new DrumStaff \with {
  		drumStyleTable = #congas-style
  		\override StaffSymbol.line-count = #2
  	}
  		<<
  		\set Staff.instrumentName = #"Iya"
      \iya
		>>
    \new Staff  {
    	\new Voice = "one" { \melody }
  	}

    \new Lyrics \lyricsto "words" \text
  >>
}
