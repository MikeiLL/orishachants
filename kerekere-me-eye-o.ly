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
			 % Kerekere m’(i) eye o
			 % kerekere m’(i) eye o
			 % a wá mi obatalá. A wá mi olorisá
			 % d(i) wo k(i)awó masá; k(i) awo masé
			 % k(i)awo máá sé réré kùn f`emi oká soso
			 % a wá dé, a wá mi, a wá dé omo obatalá
			}
		}
}

text =  \lyricmode {
	Kerekere m’(i) eye o
	kerekere m’(i) eye o
	a wá mi obatalá. A wá mi olorisá
	d(i) wo k(i)awó masá; k(i) awo masé
	k(i)awo máá sé réré kùn f`emi oká soso
	a wá dé, a wá mi, a wá dé omo obatalá
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
        \line { to become an initiate so that mistery will not fade; to greet the one versed in mistery who we definitely derive from }
        \line { so that the one versed in mistery (obatalá) does not at a distance grumble, enlarge the spirit of the boa only }
        \line { we come the crown. We come to agitate. }
        \line { we come to crown a child of the king of the white cloth }
    }
}