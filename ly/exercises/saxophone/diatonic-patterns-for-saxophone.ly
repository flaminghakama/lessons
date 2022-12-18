\version "2.19.83"
\include "english.ly"

titleLeft = "Diatonic Exercises"
titleRight = "for Saxophone"
title = "Diatonic Exercises for Saxophone"
composerName = "Elaine Paul"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{
killPreview ; rm diatonic-patterns-for-saxophone*.pdf ; lilypond ly/exercises/saxophone/diatonic-patterns-for-saxophone.ly  ; op diatonic-patterns-for-saxophone.pdf 

rm diatonic-patterns-for-saxophone*.pdf
lilypond ly/exercises/saxophone/diatonic-patterns-for-saxophone.ly
mv diatonic-patterns-for-saxophone.pdf pdf/exercises/saxophone
op pdf/exercises/saxophone/diatonic-patterns-for-saxophone.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding introductory pentatonic exercises G minor, Bb major, B minor, D major" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2022 Elaine Paul" } 
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

\include "ly/notes/diatonic/saxophone/diatonic-C-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-F-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-G-major.ily"
% \include "ly/notes/diatonic/saxophone/diatonic-B-flat-major.ily"
% \include "ly/notes/diatonic/saxophone/diatonic-D-major.ily"

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
    instrumentName = "Saxophone"
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

    \include "ly/bookparts/diatonic/saxophone/diatonic-C-Major.ily"
    \include "ly/bookparts/diatonic/saxophone/diatonic-G-Major.ily"
    \include "ly/bookparts/diatonic/saxophone/diatonic-F-Major.ily"
}


