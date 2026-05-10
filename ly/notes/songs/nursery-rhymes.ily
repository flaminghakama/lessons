\version "2.24.0"


frereJacquesPartOne = \relative c' { 
	\key c \major
	c4 d e c | c d e c | e f g2 | e4 f g2 | 
	g8 a g f e4 c | g'8 a g f e4 c |
}
frereJacquesPartTwo = \relative c' { 
	c g c2 | c4 g c2 \bar "|."
}
frereJacques = {
	\frereJacquesPartOne
	\frereJacquesPartTwo
}
