\version "2.19.83"
\include "english.ly"

titleLeft = "Grand Arpeggios"
titleRight = "for Clarinet"
title = "Grand Arpeggios for Clarinet"
composerName = "Elaine Paul Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm pdf/exercises/grand-arpeggios-for-clarinet.pdf
lilypond ly/exercises/grand-arpeggios-for-clarinet-major.ly 
mv grand-arpeggios-for-clarinet.pdf pdf/exercises
python ~/git/part-format/bookify-8page.py pdf/grand-arpeggios-for-clarinet.pdf pdf/printable/grand-arpeggios-for-clarinet.pdf manual

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2020 Elaine Paul Alt" } 
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

\include "ly/notes/grand-arpeggios.ily"
            
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
    instrumentName = "Clarinet"
}

\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \bookpart { 
        \include "../scores/flaming-libs/flaming-title-page.ily"
        \markup \title-page-markup "Clarinet" \composerName \title
    }

    \include "ly/bookparts/grand-arpeggios-major-clarinet.ily"
}