\version "2.19.83"
\include "english.ly"

titleLeft = "Left Hand C Exercises"
titleRight = "for Clarinet"
title = "Left Hand C Exercises for Clarinet"
composerName = "Elaine Paul Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm left-hand-C-exercises-for-clarinet.pdf
lilypond ly/exercises/clarinet/left-hand-C-exercises-for-clarinet.ly 
mv left-hand-C-exercises-for-clarinet.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/left-hand-C-exercises-for-clarinet.pdf

# python ~/git/part-format/bookify-12page.py pdf/left-hand-C-exercises-for-clarinet.pdf pdf/printable/left-hand-C-exercises-for-clarinet.pdf 
# op pdf/printable/left-hand-C-exercises-for-clarinet.pdf 

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2023 Elaine Paul" } 
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
    top-system-spacing.minimum-distance = #0

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

\include "ly/notes/clarinet-left-hand-C.ily"

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    indent = 2.25\cm
    short-indent = 1.25\cm
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\header { 
    instrumentName = "Clarinet"
}

\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    % \bookpart { 
    %     \include "../scores/flaming-libs/flaming-title-page.ily"
    %     \markup \title-page-markup "Saxophone" \composerName \title
    % }

    \include "ly/bookparts/clarinet-left-hand-C.ily"
}