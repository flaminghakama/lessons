\version "2.24.0"

titleLeft = "Enclosure Exercises"
titleRight = "for Clarinet"
titleFull = "Enclosure Exercises for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = ""

%{

killPreview; rm enclosure-exercises-for-clarinet.pdf ; lilypond ly/theory/enclosure-exercises.ly ; op enclosure-exercises.pdf

killPreview
rm enclosure-exercises.pdf
lilypond ly/theory/enclosure-exercises.ly 
mv enclosure-exercises.pdf pdf/theory
op pdf/theory/enclosure-exercises.pdf

%}

\include "../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../engraving/flaming-libs/flaming-fonts.ily"


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


ascendingCLB = \relative c' { 
    g8 b bf gs  a c a as  | 
    b8 d df b  c e ef cs | 
    d8 fs f ds  e g e f | 
    fs8 a af fs g2 | 
}
descendingCLB = \relative c'' { 
    g8 ds e g  fs d ds fs | 
    e8 c cs e  d as b c |
    b8 gs a c  b g gs b |
    a8 f fs a g2 | 
}
ascending = \relative c' { 
    g8 b bf gs  a df c as  | 
    b8 d df b  c e ef cs | 
    d8 fs f ds  e af g f | 
    fs8 a af fs g2 | 
}
descending = \relative c'' { 
    g8 e f g  fs d ds f | 
    e8 c cs ef  d as b df |
    c8 a as c  b g gs bf |
    a8 f fs af g2 | 
}

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
        % print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \transpose g, c {
        \accidentalStyle modern-voice-cautionary
        \mark "Ascending CLB"
        \ascendingCLB
        \mark "Decending CLB"
        \descendingCLB 
        \mark "Ascending"
        \ascending 
        \mark "Decending"
        \descending

    }

}