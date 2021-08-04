\version "2.19.15"
\include "english.ly"

titleLeft = "Arban's #6"
titleRight = "for Clarinet"
title = "Arban's #6 for Clarinet"
composerName = "Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm arbans-for-clarinet.pdf
lilypond ly/arbans-for-clarinet.ly 
#python ~/git/part-format/bookify-7page.py arbans-for-clarinet.pdf arbans-for-clarinet-printable.pdf automatic
mv arbans-for-clarinet.pdf pdf
#mv arbans-for-clarinet-printable.pdf pdf/printable

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2021 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #2
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #0

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
\include "../scores/flaming-libs/flaming-fonts.ily"
\include "ly/ily/layout.ily"

\include "ly/notes/arbans.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "C Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c g, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "G Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c f, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "F Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c bf, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Bb Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c d { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "A Major"  " " }
        }
    }
}