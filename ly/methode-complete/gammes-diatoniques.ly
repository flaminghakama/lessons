\version "2.19.81"
\include "english.ly"

titleLeft = "Méthod complete"
titleRight = "de saxophone"
title = "Méthod complète de saxophone"
composerName = "J. F. Cokken"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm gammes-diatoniques.pdf
lilypond ly/gammes-diatoniques.ly 
mv gammes-diatoniques.pdf pdf
python ~/git/part-format/bookify-8page.py pdf/gammes-diatoniques.pdf pdf/printable/gammes-diatoniques.pdf manual

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2020 Elaine Paul" } 
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
    top-system-spacing.minimum-distance = #20

    % Spacing in between systems
    %system-system-spacing.basic-distance = #18
    %system-system-spacing.minimum-distance = #15

    score-system-spacing.basic-distance = #20    

    page-breaking = #ly:minimal-breaking

    #(define fonts
        (make-pango-font-tree 
            "Dominican" 
            "Highlander ITC TT" 
            "Papyrus"
            (/ myStaffSize 20)
        )
    )
}

%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"
\include "ly/ily/methode-complete/layout.ily"

\include "ly/notes/methode-complete/gammes-diatoniques.ily"
% \include "ly/notes/pentatonic-D-minor.ily"
% \include "ly/notes/pentatonic-G-minor.ily"
% \include "ly/notes/pentatonic-C-minor.ily"

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

    \bookpart { 
        \include "../scores/flaming-libs/flaming-title-page.ily"
        \markup \title-page-markup "Saxophone" \composerName \title
    }

    \include "ly/bookparts/methode-complete/gammes-diatoniques.ily"
    %\include "ly/bookparts/pentatonic-D-minor.ily"
    %\include "ly/bookparts/pentatonic-G-minor.ily"
    %\include "ly/bookparts/pentatonic-C-minor.ily"
    %\include "ly/bookparts/pentatonic-Csharp-minor.ily"
}