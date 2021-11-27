%{

First of all, thanks for the considered response.

Now, regarding 1 => 1 vs 1 => N , yes I agree I was hand wavy.

Of course these are all 1 => N.

Including the ones that are also valid lilypond durations.

For example, the quarter note in 4/{4} could be represented by 
4, by 8 ~ 8, or by \tuplet 5/4 { 16 ~ 16 ~ 16 ~ 16 ~ 16 }   

Of course this is silly.
Occam can tell us the simplest representation.

I believe we already have one:

%}

\version "2.19.83"

\fixed c' {
    \tuplet 5/4 { a16 }
}

