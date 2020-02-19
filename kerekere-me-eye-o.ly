\version "2.18.2"

\header {
	title = "Kere kere M’(i) Eye O"
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
			\repeat volta 4 {
			 bes8. c c8 c4 bes8 g | f2 r | % Kerekere m’(i) eye o
			 bes8. c c8 c4 bes8 g | f4. d8 g4 f8 d | % kerekere m’(i) eye o a wá mi o
			 c4 g'8 g~ g2~ | g4 r8 d g4 f8 d | c8. f c8~ c2 | % batalá. A wá mi olorisá
			 c8. c g'8 f4 g | c,8 r4 g'8 f4 g | c,8 r4 g'8 f4 g | % d(i) wo k(i)awó masá; k(i) awo masé k(i)awo máá 
			 c,8 c c e d4 d8 c | bes8. c c8~ c4. r8 | % sé réré kùn f`emi oká soso
			 f8. f d8~ d2 | e8. e c8~ c2 | d8. g f8 e4 c8 c | e8. e c8~ c2 | % a wá dé, a wá mi, a wá dé omo obatalá
			 f8. f d8~ d2 | e8. e c8~ c2 | d8. g f8 e4 c8 c | bes8. c c8~ c2 | % a wá dé, a wá mi, a wá dé omo obatalá
			}
		}
}

text =  \lyricmode {
	Ke -- re -- ke -- re m’(i) eye o__
	Ke -- re -- ke -- re m’ eye o__
	A wá mi O -- ba -- ta -- lá. A wá mi ol -- o -- ri -- sá
	D(i) wo ka -- wó ma -- sá; k(i)a -- wo ma -- sé
	K(i)a -- wo máá sé ré -- ré kùn f`e -- mi o -- ká so -- so
	A wá dé, a wá mi, a wá dé o -- mo O -- ba -- ta -- lá
	A wá dé, a wá mi, a wá dé o -- mo O -- ba -- ta -- lá
}

clavebeat = \drummode {
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
        \line { Clearly i am paying respect. Clearly i am honoring him. }
        \line { We come to agitate the king of the white cloth }
        \line { we come to agitate the select-head worshipper }
        \line { to become an initiate so that mistery will not fade; }
        \line { to greet the one versed in mistery who we definitely derive from }
        \line { so that the one versed in mistery (obatalá) does not at a distance grumble, }
        \line { enlarge the spirit of the boa only }
        \line { we come the crown. We come to agitate. }
        \line { we come to crown a child of the king of the white cloth }
    }
}