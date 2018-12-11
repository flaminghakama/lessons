Hi, 

I hope someone can point me in the right direction.

What I'd like to do is print multiple measure numbers for repeated sections.

The situation is that I have one instrument (upright bass) whose musical figure repeats, 
while other instruments have different material.

The bass player finds it difficult to turn plages, so to conserve space, 
I notate their part with repeats, whereas everyone else has everything written out.

I can get the overall measure numbers to coincide (after the repeat) by using 
    \set Score.currentBarNumber = #13

But in the repeated section, for the bass part, only the first number prints.


Here is my MWE of what I have now:

\version "2.19.15"

% all parts but bass
\score {
    \relative c'' {
        c1 | 1 | 1 | 1 | \break
        \bar "||"
        cs1 | 1 | 1 | 1 | \break
        ds1 | 1 | 1 | 1 | \break
        \bar "||"
        e1 | 1 | 1 | 1 | 
    }
}

% bass part
\score {
    \relative c {
        \clef bass
        c1 | 1 | 1 | 1 | \break

        % I'd like this measure to show both "5" and "9"
        \repeat volta 2 { 
            \bar "[|:"
            b1 | 1 | 1 | 1 
            \bar ":|]"
        } \break
        \set Score.currentBarNumber = #13
        e1 | 1 | 1 | 1 | 
    }
}

So, in the bass part, I want a way to be able to specify the following:

"at this point, replace the default measure number markup function 
with another measure number markup function.

This function reads the current measure number, 
calculates a second measure number by adding another value 
to the current measure number, 
then prints the two numbers in a column."



I'm basically unsure about every step here:

Is there such a thing as "the default measure number markup function"?

Can I specify another function to be used 
instead of the default measure number markup function,
and if so, how?

Can I invoke this new measure number markup function on an as-needed basis--
use the default measure number markup function everywhere, 
except where I explicitly specify to use the new one?

Within my new measure number markup function, how can I access the current measure number?

Within my new measure number markup function, how can I add numbers?

Within my new measure number markup function How can I turn a number into markup?


\version "2.19.15"
\include "english.ly"

%{

How can I pass in a number to a function?
How can I do math on the number to get another number?
How can I then use the numbers as markup?


(define-markup-command (double-measure-numbers layout props
    firstNumber measureCount)
    (number? number?)
    "Draw two measure numbers"

    (interpret-markup layout props
        (let secondNumber (+ #firstNumber #measureCount)
            #{
                \markup \center-column { 
                    #firstNumber
                    #secondNumber
                }
            #}
        )
    )
)

    
#(define-markup-command (double-box layout props text) (number?)
  "Draw a double box around text."
  (interpret-markup layout props
    #{\markup \override #'(box-padding . 0.4) \box
            \override #'(box-padding . 0.6) \box { #text }#}))


% all parts but bass
\score {
    \relative c'' {
        c1 | 1 | 1 | 1 | \break
        \bar "||"
        d1 | 1 | 1 | 1 | \break
        d1 | 1 | 1 | 1 | \break
        \bar "||"
        e1 | 1 | 1 | 1 | 
    }
}
%}
% bass part
\score {
    \relative c {
        \clef bass
        c1 | 1 | 1 | 1 | \break

        % I'd like this measure to show both "5" and "9"
        \repeat volta 2 { 
            \bar "[|:"
            <>^\markup \double-box #11
            d1 | 1 | 1 | 1 
            \bar ":|]"
        } \break
        \set Score.currentBarNumber = #13
        e1 | 1 | 1 | 1 | 
    }
}


