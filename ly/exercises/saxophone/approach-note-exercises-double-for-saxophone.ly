\version "2.24.0"
\include "english.ly"


titleLeft = "Double Approach Note"
titleRight = "Exercises for Saxophone"
titleFull = "Double Approach Note Exercises for Saxophone"
composerName = "Elaine Paul"
arranger = "" 
copyright = \markup \center-column { " "  \tiny "copyright © 2020-2026 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm approach-note-exercises-double-for-saxophone*.pdf ; lilypond ly/exercises/saxophone/approach-note-exercises-double-for-saxophone.ly ; op approach-note-exercises-double-for-saxophone.pdf 

rm approach-note-exercises-double-for-saxophone*.pdf
lilypond ly/exercises/saxophone/approach-note-exercises-double-for-saxophone.ly
mv approach-note-exercises-double-for-saxophone.pdf pdf/exercises/saxophone
op pdf/exercises/saxophone/approach-note-exercises-double-for-saxophone.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding double approach note" ; git push 
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

    top-margin = #2
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #0

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #16

    % Spacing in between systems
    %system-system-spacing.basic-distance = #18
    %system-system-spacing.minimum-distance = #15

    score-system-spacing.basic-distance = #20    

    % markup-system-spacing.basic-distance = #15
    markup-system-spacing.padding = #3

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

\include "ly/notes/approach-notes/saxophone/single-approach-note-exercises.ily"
\include "ly/notes/approach-notes/saxophone/double-approach-note-exercises.ily"

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    indent = 1.25\cm
    short-indent = 1.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
    }
    \context {
        \ChordNames
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.4
    }
}


\header { 
    instrumentName = "      Saxophone"
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

    \include "ly/bookparts/approach-notes/saxophone/double-approach-note-exercises.ily"
}