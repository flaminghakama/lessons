\version "2.19.15"
\include "english.ly"

titleLeft = "Rhythmic Exercises"
titleRight = "for Flute"
titleFull = "Rhythmic Exercises for Flute"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2026 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm rhythmic-exercises-for-flute*.pdf ; lilypond ly/exercises/flute/rhythmic-exercises-for-flute.ly ; op rhythmic-exercises-for-flute.pdf 

rm rhythmic-exercises-for-flute*.pdf
lilypond ly/exercises/flute/rhythmic-exercises-for-flute.ly
mv rhythmic-exercises-for-flute.pdf pdf/exercises/flute
op pdf/exercises/flute/rhythmic-exercises-for-flute.pdf

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


\include "ly/notes/rhythms/rhythms-introduction.ily"

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

    % \bookpart { 
    %     \include "../scores/flaming-libs/flaming-title-page.ily"
    %     \markup \title-page-markup "Saxophone" \composerName \title
    % }

   \include "ly/bookparts/rhythm/flute/rhythms-introduction.ily"

}