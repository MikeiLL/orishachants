\version "2.18.2"

\header {
	title = "We Move the Energy (based on Ago Elegba E)"
	subtitle = "for Elegba"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
		\partial 4 f4 | aes f f d | % Ago Elegba
			\repeat volta 2 {
			 	a'2. a4 | c a a g | % go Elegba e Ago Elegba
				f2. f8 f | aes4 f f d | a'2. a8 a | c4 a a g | % e Esu Baba emi e Esu Baba emi
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Awa la temu e Awa la temu
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E A fe gi so fi e A fe gi so fi
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Iya Olokun e Iya Olokun
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Iya Ore Fa e Iya Ore Fa
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Iya Olokun e Iya Olokun
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Iya Ore Fa e Iya Ore Fa
				f2. f4 | aes f f d | a'2. a4 | c a a g | % E Iya Olokun e Iya Olokun
				f2. f4 | aes f f d | %  e Ago Elegba
			}
		}
}

text =  \lyricmode {
	We move the en -- er -- gy.
  (We move the en -- er -- gy.)
  Gon -- na move it here to -- day.
  (Gon -- na move it here to -- day.)
  Our bo -- dies swing and sway.
  (Our bo -- dies swing and sway.)
  We move it out this way.
  (We move it out this way.)
  There's some -- thing we re -- lay.
  (There's some -- thing we re -- lay.)
  We play the way we pray.
  (We play the way we pray.)
  And pray the way we play.
  (And pray the way we play.)
  It's ne -- ver yes -- ter -- day.
  (It's ne -- ver yes -- ter -- day.)
  We're real -- ly here to -- day.
  (We're real -- ly here to -- day.)
	We move the en -- er
}

clavebeat = \drummode {
	\partial 4 r4 | r1 |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
	cl4. cl8 r4. cl8 | r4 cl4 cl r | cl4. cl8 r4. cl8 | r4 cl4 cl r |
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
