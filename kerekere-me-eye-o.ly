\version "2.18.2"

\header {
	title = "Iwéré Ijéjé"
	subtitle = "for Ọbàtálá"
	copyright = "© Public Domain"
	tagline = "Transcribed in 2019 by Pinpin Balewa for Osun's Golden Harvest Pensacola, Florida"
}

melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\repeat volta 2 {
			 bes4. c c4 | c2 bes4 g | f1 | r | % Kerekere m’(i) eye o
			 bes4. c c4 | c2 bes4 g | f2. d4 | g2 f4 d | % kerekere m’(i) eye o a wá mi o
			 c2 g4 g~ | g1~ | g2 r4 d | g2 % batalá. A wá mi olorisá
			 % d(i) wo k(i)awó masá; k(i) awo masé
			 % k(i)awo máá sé réré kùn f`emi oká soso
			 % a wá dé, a wá mi, a wá dé omo obatalá
			}
		}
}

text =  \lyricmode {
	Ke -- re -- kere m’(i) eye o__
	Ke -- re -- ke -- re m’ eye o__
	A wá mi O -- ba -- ta -- lá. A wá mi ol -- o -- ri -- sá
	D(i) wo ka -- wó ma -- sá; k(i) a -- wo ma -- sé
	K(i)a -- wo máá sé réré kùn f`emi o -- ká so -- so
	A wá dé, a wá mi, a wá dé omo O -- ba -- ta -- lá
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