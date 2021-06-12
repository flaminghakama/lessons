\version "2.19.83"
\include "english.ly"

titleLeft = "Pentatonic Exercises"
titleRight = "for Saxophone"
title = "Pentatonic Exercises for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm pentatonic-exercises-for-saxophone.pdf
lilypond ly/exercises/pentatonic-exercises-for-saxophone.ly 
mv pentatonic-exercises-for-saxophone*.pdf pdf/exercises
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-saxophone-1-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-saxophone-1-of-3.pdf manual
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-saxophone-2-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-saxophone-2-of-3.pdf manual
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-saxophone-3-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-saxophone-3-of-3.pdf manual

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

\include "ly/notes/pentatonic/saxophone/pentatonic-A-minor.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-E-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-D-minor.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-B-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-G-minor.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-F-sharp-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-C-minor.ily"

%\include "ly/notes/pentatonic/saxophone/pentatonic-C-sharp-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-F-minor.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-B-flat-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-E-flat-minor.ily"

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
    \bookOutputName "pentatonic-exercises-for-saxophone"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \bookpart { 
        \include "../scores/flaming-libs/flaming-title-page.ily"
        \markup \title-page-markup "Saxophone" \composerName \title
    }

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-A-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-E-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-D-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-B-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-G-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-F-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-C-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-C-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-F-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-G-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-B-flat-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-E-flat-minor.ily"
}


\book { 
    \bookOutputName "pentatonic-exercises-for-saxophone-1-of-3"
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

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-A-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-E-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-D-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-B-minor.ily"
}

\book { 
    \bookOutputName "pentatonic-exercises-for-saxophone-2-of-3"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-G-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-F-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-C-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-C-sharp-minor.ily"
}

\book { 
    \bookOutputName "pentatonic-exercises-for-saxophone-3-of-3"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-F-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-G-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/saxophone/pentatonic-B-flat-minor.ily"

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-E-flat-minor.ily"
}