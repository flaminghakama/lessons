\version "2.19.83"

%  It seems what you want is effectivey the same as this
\score {
    \relative { 
        <>^\markup "single expression"  
        a1 b c d f 
    }
}

%  The "lazy" or implicit way of using relative 
%  happens to work this way, too 
\score {
    \relative { 
        <>^\markup "ligature notes using implicit relative"  
        a1 { b c d } f 
    }
}

%  However, the more "responsible" or explicit way of using relative
%  produces the same undesired output as your example
\score {
    \relative { 
        <>^\markup "when ligature notes are a fully-qualified experssion"  
        a1 \relative { b c d } f 
    }
}

%  This is beacause, within a \relative, 
%  any nested "fully-qualified" music expressions within it 
%  are removed from the calculation of octave of the pitches in that expression.
%  The calulation in this case is effectively reduced to 
\score {
    \relative { 
        <>^\markup "effective calculation after removing ligature expression"  
        a1 f 
    }
}

%  This behavior of music experssions being removed from the relative calcuation
%  is the more general behavior than the use of implicit relative,
%  so it is expected that content returned by a funcion will act in this way

%  I may be easiest to start thinking of combined music expressions 
%  in the way Lilypond does,
%  So, when you break up the top-level expression with a ligature,
%  it effectively creates 3 separate expressions
%  If you notate it as such from the beginning

\score {
    {
        <>^\markup "using 3 fully-qualified experssions"  
        \relative c' { a1 } 
        \relative c' { b1 c d } 
        \relative c' { f1 } 
    }
}

%  Then removing (or changing) the middle expression will not affect the note following it
\score {
    {
        <>^\markup "removing the middle ligature expression no longer messes it up"  
        \relative c' { a1 } 
        \relative c' { f1 } 
    }
}

%  If you still want to use implicit relative combination, 
%  just think about the correct octavation of the note following your ligature 
%  as being relative to the note preceding the ligature,
%  since that is how Lilypond is thinking of it.

HTH, 

