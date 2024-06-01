\version "2.24.0"

titleLeft = "Rhythmic Exercises"
titleRight = "for Clarinet"
titleFull = "Rhythmic Exercises for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = ""

%{

rm rhythmic-exercises-for-clarinet.pdf ; lilypond ly/exercises/clarinet/rhythmic-exercises-for-clarinet.ly ; op rhythmic-exercises-for-clarinet.pdf

rm rhythmic-exercises-for-clarinet.pdf
lilypond ly/exercises/clarinet/rhythmic-exercises-for-clarinet.ly 
mv rhythmic-exercises-for-clarinet.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/rhythmic-exercises-for-clarinet.pdf

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 
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
\include "ly/ily/layout.ily"

\include "ly/notes/rhythms-eighths.ily"
\include "ly/notes/rhythms-syncopated-straight.ily"
\include "ly/notes/rhythms-careless-whisper.ily"
\include "ly/notes/rhythms-syncopation.ily"
\include "ly/notes/rhythms-sixteenths.ily"


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
    %     \markup \title-page-markup "Clarinet" \composerName \title
    % }

   \include "ly/bookparts/rhythm/clarinet/rhythms-eighths.ily"
   % \include "ly/bookparts/rhythm/clarinet/rhythms-syncopated-straight.ily"
   % \include "ly/bookparts/rhythm/clarinet/rhythms-careless-whisper.ily"
   \include "ly/bookparts/rhythm/clarinet/rhythms-syncopation.ily"
   \include "ly/bookparts/rhythm/clarinet/rhythms-sixteenths.ily"
}