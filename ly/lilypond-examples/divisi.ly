\version "2.19.83"

Here is what you should do.  First, create the following variables with notes:

violinUnison Has notes where there are unisons, and spacers whenever the part splits.
vioinUpper Has spacers where there is unison, and the notes for the top staff of the divisi.
violinLower Has spacers where there is unison, and the notes for the bottom staff of the divisi.

Then for your staves, create:

A staff for the unison, which has the \violinUnison
A staffgroup for the divisi, which has 2 staves:
One staff for \violinUpper, and one for \violinLower.

Then, use the \RemoveAllEmptyStaves in the \layout block.



violinUnison = \relative c'' { 
	c1 d1 e1 f1 \break
	s1 s1 s1 s1 \break
	c1 d1 e1 f1
} 

violinUpper = \relative c'' { 
    s1 s1 s1 s1 
    b2 a2 | b2 a2 | b2 a2 | b2 a2 | 
    s1 s1 s1 s1 
}

violinLower = \relative c'' { 
    s1 s1 s1 s1 
    g4 f2 g4 ~ | g4 f2 g4 ~ | g4 f2 g4 ~ | g4 f2 g4 |
    s1 s1 s1 s1 
}

\score {
	<<
        \new Staff \violinUnison
	    \new StaffGroup <<
      		\new Staff \violinUpper
      		\new Staff \violinLower
		>>
	>>
	\layout{
		\context { 
		    \Staff \RemoveAllEmptyStaves 
		}
	}
}

