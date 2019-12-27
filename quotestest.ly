\version "2.18.2"

\header {
	title = "Quotes in Markup Line"
}


\markup {
    \column {
        \line { \null }
        \line { Single quotes are easy, like 'this'. }
        \line { I want double quotes. }
        \line { This creates no "quotes". }
		\line { This does "\"work\"." }
		
    }
}