\version "2.24.0"
\include "english.ly"


% Here is my melody and chord changes

melody = \relative c'' { 
    \time 3/4
    \partial 4 
    g8 8 | a4 g c | b2  r4 |
}
chordChanges = \chordmode {  
    r4 | c2. | g:7 |
}


%  Doing it by hand 

\score {
    <<
        \new ChordNames \transpose ef c { 
            \chordChanges
        }
        \new Staff \transpose ef, c { 
            \clef treble
            \melody
        }
    >>
}



%  Two functions I want to use, the first of which works, the second does not
%  How do I get makeChords to work?

% makeStaff = #(define-music-function
%     (staffName transposition clefName tweaks part)
%     (string? ly:pitch? string? ly:music? ly:music?)
%     #{
%         \new Staff = "$staffName" { 
%             \include "ly/staves/parts/staff-defaults.ily"
%             \accidentalStyle modern-voice-cautionary
%             \clef $clefName
%             \transpose $transposition c <<
%                 $tweaks
%                 $part 
%             >>
%         }
%     #}
% )

makeStaff = #(define-music-function 
    (transposition clefName part) 
    (ly:pitch? string? ly:music?)
    #{
        \new Staff \transpose $transposition c { 
            \clef $clefName
            $part 
        }
    #}
)

makeChords = #(define-music-function (transposition changes) (ly:pitch? ly:music?)
    #{
        \new ChordNames \transpose $transposition c {
            $changes
        }
    #}
)


%  The function that returns a staff works

\score {
    <<
        \new ChordNames \transpose ef c { 
            \chordChanges
        }
        \makeStaff ef, treble \melody 
    >>
}



%  But the one that makes chord changes does not work
%  How can I fix it to work?

\score {
    <<
        \makeChords ef \chordChanges 
        \makeStaff ef, treble \melody 
    >>
}


