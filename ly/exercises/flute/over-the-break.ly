\version "2.24.0"
\include "english.ly"

titleLeft = "Over"
titleRight = "The Break"
titleFull = "Over The Break"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm over-the-break*.pdf ; lilypond ly/exercises/flute/over-the-break.ly ; op over-the-break.pdf 

rm over-the-break*.pdf
lilypond ly/exercises/flute/over-the-break.ly
mv over-the-break.pdf pdf/exercises/flute
op pdf/exercises/flute/over-the-break.pdf

./bin/createIndexes.sh
git add . ; git commit -m"renaming flute fingerings" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\header {
    source = ""
    style = ""
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #4
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #10

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #14

    % Spacing in between systems
    %system-system-spacing.basic-distance = #18
    %system-system-spacing.minimum-distance = #15

    score-system-spacing.basic-distance = #20    

    page-breaking = #ly:minimal-breaking

    #(define fonts
        (make-pango-font-tree 
            "Hardwood" 
            "Highlander ITC TT" 
            "Papyrus"
            (/ myStaffSize 20)
        )
    )
}

%BodoniClassicChancery" 
\include "ly/ily/layout.ily"


\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\header { 
    instrumentName = "Flute"
    poet = \instrumentName
}


\include "ly/notes/clarinet-introduction.ily"


overTheBreakLowerInG = \relative c' { 
    \key g \major
    \time 3/4
    \partial 8. 
    d16 e [ fs ] \bar "||" 
    g d e fs  g d e fs  g8 b  | g4  r  r16 e fs g |
    a16 e fs g  a e fs g  a8 c  | a4  r  r16 fs g a |
    b16 fs g a  b fs g a  b8 d  | b4  r  r16 g a b |
    c16 g a b  c g a b  c8 e  | c4  r  r16 a b c | 
    d16 c a fs  a fs d c  b8 g' | r16 g' g,8  r2
    \bar "|."  
}

overTheBreakUpperInG = \relative c' { 
    \key g \major
    \time 3/4
    \partial 8. 
    d16 e [ fs ] \bar "||" 
    g d e fs  g d e fs  g8 b  | g4  r  r16 e fs g |
    a16 e fs g  a e fs g  a8 c  | a4  r  r16 fs g a |
    b16 fs g a  b fs g a  b8 d  | b4  r  r16 g a b |
    c16 g a b  c g a b  c8 e  | c4  r  r16 a b c | 
    d16 c a fs  a fs d c  b8 g' | r16 g' g,,8  r2 ||  
    \bar "|."  
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 

    \header {
        subtitle = ""
        % composer = ""
    }
    \bookpart {
        \header {
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakLowerInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g af { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakLowerInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakLowerInG
                    \pageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g bf { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakLowerInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g b { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g, c { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \pageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g df' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g d' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g ef' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \pageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g e' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g fs' { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \overTheBreakUpperInG
                    \noPageBreak
                }
            >>
        }

    }
}