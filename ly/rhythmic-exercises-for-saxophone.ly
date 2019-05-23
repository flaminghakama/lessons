\version "2.19.15"
\include "english.ly"

titleLeft = "Rhythmic Exercises"
titleRight = "for Saxophone"
title = "Rhythmic Exercises for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm rhythmic-exercises-for-saxophone.pdf
lilypond ly/rhythmic-exercises-for-saxophone.ly 
python ~/git/part-format/bookify-7page.py rhythmic-exercises-for-saxophone.pdf rhythmic-exercises-for-saxophone-printable.pdf manual
mv rhythmic-exercises-for-saxophone.pdf pdf
mv rhythmic-exercises-for-saxophone-printable.pdf pdf/printable

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2019 D. Elaine Alt" } 
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

   \include "ly/bookparts/rhythms-eighths.ily"
   \include "ly/bookparts/rhythms-syncopated-straight.ily"
   \include "ly/bookparts/rhythms-careless-whisper.ily"
   \include "ly/bookparts/rhythms-syncopation.ily"
   \include "ly/bookparts/rhythms-sixteenths.ily"
 

}