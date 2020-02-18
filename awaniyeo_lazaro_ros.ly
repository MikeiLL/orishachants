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
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {	
			\repeat volta 2 {
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f~ | f1 | % A wa ni e o Ogun Mariwo  
				r8 f4 a8 f4 a | g1 | f8 a4 f8 f4 f | d8 f4 f8 d4 d8 c | % A wa ni e o Ogun Mariwo Ogun o fomo de
				r4. f8 a4 f8 f | d4 d r f8 f | % Onile Abe re 
				f4 a c a~ | a f f2 |  % Mariwo Ogun de Bamba
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
        \line { We come to honor you, Ogun of the Palm Fronds. }
        \line { Ogun you scrub clean the hunter, owner of the house. }
        \line { Razor that cuts palm fronds. Ogun arrives, the stout one.}
    }
}