\version "2.18.2"

\header {
	title = "A Wa Ni Ye O Ògún Mariwo"
	subtitle = "for Ògún"
	copyright = "© Public Domain"
	piece = "rhythm: chachalokofu (slow)"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f~ | f1 | % A wa ni e o Ògún Mariwo
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f | d8 f4 f8 d4 d8 c | % A wa ni e o Ògún Mariwo Ògún o fomo de
				r4. f8 a4 f8 f | d4 d r f8 f | % Onile Abe re
				f4 a c a~ | a f f2 |  % Mariwo Ògún de Bamba
			}
			\repeat volta 2 {
				f4. d8 c4 d | f2 f2 | g8 a4 a g a8~ | a8 a4 g4. r4 | % E ma -- ri -- wo yan yan Aare re Aare re o
			}
		}
}

text =  \lyricmode {
	A wa ni e o Ò -- gún Ma -- ri -- wo
	A wa ni e o Ò -- gún Ma -- ri -- wo
	Ò -- gún o fo -- mo de O -- ni -- le A -- be re
	Ma -- ri -- wo Ò -- gún de Bam -- ba.
	E ma -- ri -- wo yan yan Aa -- re re Aa -- re re o
}

clavebeat = \drummode {
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { We come to honor you, Ògún of the Palm Fronds. }
        \line { Ògún you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ògún arrives, the stout one.}
        \line { \null }
				\line { There is a recording of Lazaro Ros doing this song, title Awaniyeo, Awanile... }
    }
}
