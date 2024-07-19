
structureTwo = \relative c' {
	
	\key af \major
	\time 2/2
	\tempo "Allegro animato"

	s1*5 \breakScore
	s1*6 \breakScore

	s1*6 \breakScore
	s1*6 \breakScore

	s1*5 \breakScore
	s1*4 \breakScore
	s2 
	\startSection "1"
	s2 \breakScore

	s1*5 \breakScore
	s1*5 \breakScore

	s1*5 \breakScore
	s1*6 \breakScore

	s1*5 \breakScore
	s1*5 \breakScore

	s1

	\startSection "2"
	s1*5 \breakScore
	s1*5 \breakScore

	s1*5 \breakScore
	s1*5 \breakScore

	s1*5 \breakScore

	s1*5 \breakScore
	s1*5 \breakScore

	\startSection ""
	s1 \breakScore

	s1*5 \breakScore
	s1*5 \breakScore
}


dynamicsTwoZero = \relative c' {
	s1 | <>\p s | s1*3 |
	s1*3 | s2 \< s2 | s1 | \> s1 |

	\! s1*6
	s1*6

	s1*2 | \cresc s1*3 
	s2 <>\f s2 | s1*3 | s2 || <>\p s2 
}

violinITwoZero = \relative c' {
	R1 | c4 ( af' ) r2 | af4 ( c ) r2 | r  ef4-. g-. | bf ( af ) r2 |
	r2 r4 c-. | 4 ( df ) r2 | r r4 df-. | 4 ( ef ) fs2 | g af | b c | 

	c,2. f4-. | ef2 r | c4 ( ef ) r2 | c4 ( d ) 2 | 2. c4 | bf r r2 |
	g4 ( cs ) r2 | e4 ( g ) f2 | f,2 2 | 2 r | r r4 d-. | f4-> ( e ) r2 |

	r2 r4 e-. | g-> ( fs )  r8 d gf [ bf ] | r8 d, gf [ bf ] r8 d, gf [ bf ] | r8 d, gf [ bf ] r8 e, g [ bf ] | r8 e, g [ bf ] r8 e, g [ bf ] |
	r8 f af [ c ] d4 f, | af bf df f | ef,1 | ef4 4 f g | af || gf
}

violinIITwoZero = \relative c' {
	R1 | ef2 r | ef r | r ef4-. 4-. | 2 r | 	
	r2 r4 af-. | 4 ( bf ) r2 | r r4 bf-. | 4 ( c ) fs,2 | g af | d c | 

	af2. b4-. | c2 r | a4 ( c ) r2 | a4 ( c ) bf2 | 2. a4 | g r r2 |	
	e4 ( g ) r2 | cs4 ( e ) d2 | d, c | d r | r r4 bf-. | c2 r |

	s2 r4 c-. | 2 bf8 df r4 | bf8 df r4 bf8 df r4 | bf8 df r4 bf8 e r4 | bf8 e r4 c8 e r4 | 
	c8 f r4 d4 f | af bf df f, | df1 | c4 ef df df | c2 || df 
}

violaTwoZero = \relative c' {
	R1 | af2 r | af r | r ef4-. 4-. | 2 r | 	
	r2 r4 c-. | 4 ( df ) r2 | r r4 df-. | 4 ( ef ) c2 | 2 2 | f ef | 
	
	r2. f4-. | ef2 r | c4 ( ef ) r2 | c4 ( d ) 2 | 2 d, | g4 r r2 |
	g4 ( cs ) r2 | e4 ( g ) f2 | bf,2 a | bf r | r r4 f-. | g2 r |

	r2 r4 g-. | a2 df, ~ | 1 ~ | 2 c ~ | 1 ~ |
	c2 bf'4 d, | f af bf df | g,2 ( af4 bf ) | af c, df ef | af2 || ef2 |

}

celloTwoZero = \relative c {
	R1 | af2 r | af r | r ef4-. 4-. | 2 r | 	
	r2 r4 af-. | 4 ( bf ) r2 | r r4 bf-. | 4 ( c ) af2 | g f | f ef | 

	f8 ( ef f ef  d4-. ) g,-. | c2 r | a''4 ( c ) r2 | a4 ( c ) bf2 | d d, | g4-. g,-. r2 |
	e'4 ( g ) r2 | cs4 ( e ) d2 | f,, f' | bf4-. bf,-. r2 | r r4 bf-. | 2-> r |
}



dynamicsTwoOne = \relative c' {

}

violinITwoOne = \relative c' {
}

violinIITwoOne = \relative c' {
}

violaTwoOne = \relative c' {
}

celloTwoOne = \relative c {
}


<<
	<<
		{ 
			\structureTwo
			\violinITwoZero
		}  \\
		{ 
			\structureTwo
			\violinIITwoZero
		}
	>>
	<<
		{ 
			\structureTwo
			\violaTwoZero
		} \\
		{ 
			\structureTwo
			\celloTwoZero
		}
	>>
>>


