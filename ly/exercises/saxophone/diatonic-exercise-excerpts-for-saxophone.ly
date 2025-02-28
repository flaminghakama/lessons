
\version "2.24.0"
\include "english.ly"


titleLeft = "Diatonic Exercise Excerpts"
titleRight = "for Saxophone"
titleFull = "Diatonic Exercises for Saxophone"
titleFull = \markup \center-column { "Diatonic Exercise Excerpts" "for Saxophone" }
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2025 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm diatonic-exercise-excerpts-for-saxophone*.pdf ; lilypond ly/exercises/saxophone/diatonic-exercise-excerpts-for-saxophone.ly ; op diatonic-exercise-excerpts-for-saxophone.pdf 

rm diatonic-exercise-excerpts-for-saxophone*.pdf
lilypond ly/exercises/saxophone/diatonic-exercise-excerpts-for-saxophone.ly
mv diatonic-exercise-excerpts-for-saxophone.pdf pdf/exercises/saxophone
op pdf/exercises/saxophone/diatonic-exercise-excerpts-for-saxophone.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding introductory pentatonic exercises 3 and 4 accidentals" ; git push 
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

\include "ly/notes/diatonic/saxophone/diatonic-C-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-F-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-G-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-D-major.ily"
\include "ly/notes/diatonic/saxophone/diatonic-A-major.ily"

\include "ly/notes/saxophone-articulation.ily"
\include "ly/notes/arpeggio-exercises/grand-for-saxophone.ily"
\include "ly/notes/arpeggio-exercises/dominant-for-saxophone.ily"


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
    %     \include "../../../../engraving/flaming-libs/flaming-title-page.ily"
    %     \markup \title-page-markup "Saxophone" \composerName \titleFull
    % }

    \include "ly/bookparts/diatonic/saxophone/diatonic-excerpts-C-Major.ily"

    \include "ly/bookparts/diatonic/saxophone/diatonic-excerpts-G-Major.ily"
    % \include "ly/bookparts/diatonic/saxophone/diatonic-excerpts-F-Major.ily"

    \include "ly/bookparts/diatonic/saxophone/diatonic-excerpts-D-Major.ily"

    \include "ly/bookparts/diatonic/saxophone/diatonic-excerpts-A-Major.ily"
}


