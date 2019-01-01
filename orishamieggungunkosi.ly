\version "2.18.45"
\paper {
	line-width = 4.6\in
}

melody = \relative c' {
  \clef treble
  \key f \minor
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	\new Voice = "words" {
			\partial 1/8 d8 |
			f4 f ges8 f | bes4 bes f8 r | bes4 r2 | r2 r8 d8 |
			f4 f ges8 f | bes4 bes f8 r | bes4 f2 | r2 r8 d8 |
			f4 f ges8 f | bes4 bes f8 r | f4. ges4 f8 | bes4 bes f8 r |
			f4. ges4 f8 | bes4 bes f8 r | bes4 f2 | r2 r8 d8 |
			
		}
}

text =  \lyricmode {
	O -- ri -- sa mi eg -- gun -- gun ko si
	O -- ri -- sa mi eg -- gun -- gun ko si o
	O -- ri -- sa mi eg -- gun -- gun ko si
	mi eg -- gun -- gun ko si
	mi eg -- gun -- gun ko si o O
}

harmonies = \chordmode {
	g1:m | g:m | g:m | g:m |
	g:m | g:m | g:m | g:m |
	d:m | g:m | d:m | g:m |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  {
    	\new Voice = "one" { \melody }
  	}
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { 
   #(layout-set-staff-size 16)
   }
  \midi { 
  	\tempo 4 = 125
  }
}