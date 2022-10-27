\version "2.18.2"

\header {
	title = "Yemaya Asesu"
	subtitle = "for Yemayá"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
				g8 c4 g8( c,) e | d2. | r8 c4 b c8 | d2. | % S'ò -- kù -- tà ni o a wá (A)'sẹ̀ -- 'sun
        e8 g4 e8( b) d | c2. | r8 d4 a4 b8 | c( d c~) c4. | % Ẹ -- wí mā ṣe -- 're. O -- lú -- 'mi dé.
			}
		}
}

text =  \lyricmode {
	S'ò -- kù -- tà ni o a wá (A)'sẹ̀ -- 'sun
  Ẹ -- wí mā ṣe -- 're. O -- lú -- 'mi dé.
}

clavebeat = \drummode {
	r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 | r8 cl r cl r4 |
	cl4 cl r8 cl8 |
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
       % \line { Translation (based on John Mason and Migene Gonzales-Wippler): }
       % \line { \null }
       % \line { Bound and helpless, we come to the gush of the spring. }
       % \line { You are said to continually do good. My chief comes. }
       % \line {  }
       % \line {  }
       % \line { \null }
    }
}
