
overTheBreakOneCommon = \relative c'' { 
    \key c \major
    \time 4/4
	\partial 4*1
	r16 g a b  \bar "||"
	c16 g a b  c g a b  c8 e  c16 a b c |
	d16 a b c  d a b c  d8 f  d16 b c d |
	e16 b c d  e b c d  e8 g  e16 c d e |
	f16 c d e  f c d e  f8 a  f16 d e f |
	g16 f d b  d b g f  e8 g  
}
overTheBreakOneEnding = \relative c'' { 
	r16 c c,8 
	\bar "|."
}
% In C, D, Bb, B, C#
overTheBreakOne = \relative c' {
	\overTheBreakOneCommon
	\overTheBreakOneEnding
}
% In A, G, Ab, F#
overTheBreakOneLow = \relative c' {
	\overTheBreakOneCommon
    \transpose c, c	\overTheBreakOneEnding
}

% For F, Eb, E
overTheBreakTwo = \relative c'' { 
    \key f \major
    \time 3/4
	\partial 4*1
	r16 c a g  \bar "||"
	f16 g a c  a g f a  g a bf d | f2 r16 d bf a |
	g16 a bf d  bf a g bf  a bf c e | g2 r16 e c bf |
	a16 bf c e  c bf a c  bf c d f | a2 r16 f d c |
	bf16 c d f  d c bf d  c d e g | bf2 r16 bf g e |
	g16 e c e  c bf c bf  g bf g e | c16 f8 16 ~ 16 8 f'16 f,4 
	\bar "|."
}
