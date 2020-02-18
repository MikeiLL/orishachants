\version "2.18.2"

\header {
	title = "A Wa Ni Ye O Ogun Mariwo"
	subtitle = "for Ogun"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2020 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {	
			\partial 2 f8 a g a | % A wa ni e 		
			\repeat volta 2 {
				g2.~ | g8 r f a f f | f2.~ | f8 r f a g a | % o Ogun Mariwo A wa ni e 
				g2.~ | g8 r f a f f | f r f a4 a8 | % o Ogun Mariwo Ogun o 
				f8 d16 d8 d16 f8 f f | d4 d8 r4. | % fomo de Onile Abe re 
				r8 f f f a4 | c4 a4. g8~ | g4 f2 | r4 f8 a g a |% Mariwo Ogun de Bamba
			}
		}
}

text =  \lyricmode {
	A wa ni e o O -- gun Ma -- ri -- wo
	A wa ni e o O -- gun Ma -- ri -- wo
	O -- gun o fo -- mo de O -- ni -- le A -- be re 
	Ma -- ri -- wo O -- gun de Bam -- ba. A wa ni e 
}

clavebeat = \drummode {
	\partial 2 r2 |
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
        \line { Translation (based on John Mason): }
        \line { \null }
        \line { We come to honor you, Ogun of the Palm Fronds. }
        \line { Ogun you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ogun arrives, the stout one.}
    }
}