\version "2.24.0"
\include "english.ly"


titleLeft = "Chromatic Exercises"
titleRight = "for Clarinet"
titleFull = "Chromatic Exercises for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024-2026 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


%{

killPreview ; rm chromatic-scale-for-clarinet.pdf ; lilypond ly/exercises/clarinet/chromatic-scale-for-clarinet.ly ; op chromatic-scale-for-clarinet.pdf

rm chromatic-scale-for-clarinet.pdf
lilypond ly/exercises/clarinet/chromatic-scale-for-clarinet.ly 
mv chromatic-scale-for-clarinet.pdf pdf/exercises/clarinet
open -a Preview pdf/exercises/clarinet/chromatic-scale-for-clarinet.pdf

%}

\header {
    source = ""
    style = ""
    copyright = \copyright 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #2
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #3

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #14

    % Spacing in between systems
    system-system-spacing.padding = #6


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


\include "ly/notes/chromatic/clarinet/chromatic-scale.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\header { 
    instrumentName = "clarinet"
}

\book { 
    \bookOutputName "chromatic-scale-for-clarinet"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    % \bookpart { 
    %     \include "../scores/flaming-libs/flaming-title-page.ily"
    %     \markup \title-page-markup "clarinet" \composerName \title
    % }

    \include "ly/bookparts/chromatic/clarinet/chromatic.ily"
}
