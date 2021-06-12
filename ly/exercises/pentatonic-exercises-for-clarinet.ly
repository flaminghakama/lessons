\version "2.19.83"
\include "english.ly"

titleLeft = "Pentatonic Exercises"
titleRight = "for Clarinet"
title = "Pentatonic Exercises for Clarinet"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm pentatonic-exercises-for-clarinet.pdf
lilypond ly/exercises/pentatonic-exercises-for-clarinet.ly 
mv pentatonic-exercises-for-clarinet*.pdf pdf/exercises
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-clarinet-1-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-clarinet-1-of-3.pdf manual
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-clarinet-2-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-clarinet-2-of-3.pdf manual
python ~/git/part-format/bookify-8page.py pdf/exercises/pentatonic-exercises-for-clarinet-3-of-3.pdf pdf/printable/exercises/pentatonic-exercises-for-clarinet-3-of-3.pdf manual

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

\include "ly/notes/pentatonic/clarinet/pentatonic-A-minor.ily"

\include "ly/notes/pentatonic/clarinet/pentatonic-E-minor.ily"
\include "ly/notes/pentatonic/clarinet/pentatonic-D-minor.ily"

\include "ly/notes/pentatonic/clarinet/pentatonic-B-minor.ily"
\include "ly/notes/pentatonic/clarinet/pentatonic-G-minor.ily"

\include "ly/notes/pentatonic/clarinet/pentatonic-F-sharp-minor.ily"
\include "ly/notes/pentatonic/clarinet/pentatonic-C-minor.ily"

%\include "ly/notes/pentatonic/clarinet/pentatonic-C-sharp-minor.ily"
\include "ly/notes/pentatonic/clarinet/pentatonic-F-minor.ily"

\include "ly/notes/pentatonic/clarinet/pentatonic-B-flat-minor.ily"
\include "ly/notes/pentatonic/clarinet/pentatonic-E-flat-minor.ily"

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

%{
\book { 
    \bookOutputName "pentatonic-exercises-for-clarinet"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \bookpart { 
        \include "../scores/flaming-libs/flaming-title-page.ily"
        \markup \title-page-markup "clarinet" \composerName \title
    }

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-A-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-E-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-D-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-B-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-G-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-F-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-C-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-C-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-F-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-G-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-B-flat-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-E-flat-minor.ily"
}
%}

\book { 
    \bookOutputName "pentatonic-exercises-for-clarinet-1-of-3"
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

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-A-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-E-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-D-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-B-minor.ily"
}

%{
\book { 
    \bookOutputName "pentatonic-exercises-for-clarinet-2-of-3"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-G-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-F-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-C-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-C-sharp-minor.ily"
}

\book { 
    \bookOutputName "pentatonic-exercises-for-clarinet-3-of-3"
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-F-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-G-sharp-minor.ily"
    \include "ly/bookparts/pentatonic/clarinet/pentatonic-B-flat-minor.ily"

    \include "ly/bookparts/pentatonic/clarinet/pentatonic-E-flat-minor.ily"
}
%}