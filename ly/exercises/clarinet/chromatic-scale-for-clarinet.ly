\version "2.19.83"
\include "english.ly"

titleLeft = "Chromatic Exercises"
titleRight = "for Clarinet"
title = "Chromatic Exercises for Clarinet"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm chromatic-exercises-for-clarinet.pdf ; lilypond ly/exercises/clarinet/chromatic-scale-for-clarinet.ly  ; mv chromatic-scale-for-clarinet*.pdf pdf/exercises/clarinet ; open -a Preview pdf/exercises/clarinet/chromatic-scale-for-clarinet.pdf


rm chromatic-exercises-for-clarinet.pdf
lilypond ly/exercises/clarinet/chromatic-scale-for-clarinet.ly 
mv chromatic-scale-for-clarinet*.pdf pdf/exercises/clarinet
open -a Preview pdf/exercises/clarinet/chromatic-scale-for-clarinet.pdf

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2021 Elaine Alt" } 
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

    \include "ly/bookparts/chromatic/clarinet/chromatic-lower-register.ily"
}
