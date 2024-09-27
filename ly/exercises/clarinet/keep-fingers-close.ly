\version "2.24.0"
\include "english.ly"

titleLeft = "Keep Fingers Close"
titleRight = "for Clarinet"
titleFull = "Keep Fingers Close for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 


\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{

killPreview ; rm keep-fingers-close.pdf ; lilypond ly/exercises/clarinet/keep-fingers-close.ly ; open -a Preview keep-fingers-close.pdf


rm keep-fingers-close.pdf
lilypond ly/exercises/clarinet/keep-fingers-close.ly 
#python ~/git/part-format/bookify-7page.py keep-fingers-close.pdf keep-fingers-close-printable.pdf automatic
mv keep-fingers-close.pdf pdf/exercises/clarinet
open -a Preview pdf/exercises/clarinet/keep-fingers-close.pdf
#mv keep-fingers-close-printable.pdf pdf/printable

%}


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
\include "ly/notes/keep-fingers-close.ily"

\layout { 
    indent = 0.65\cm
    short-indent = 0\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
        \omit BarNumber    
        \override Glissando.minimum-length = #3
        \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando.thickness = #1.8
        %\override StringNumber.stencil = ##f
    }
}

\paper { 
    left-margin = 12
    right-margin = 12
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
        print-all-headers = ##t
    }
    \header {
        title = \title
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.1)
                \keepFingersCloseSequence
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Left Hand Sequence"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.1)
                \keepFingersCloseLeftHand
                \pageBreak
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Returning To Each Note"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.1)
                \keepFingersClose
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Left Hand"  " " }
        }
    }


    % \score {
    %     << 
    %         \override Score.RehearsalMark.self-alignment-X = #LEFT
    %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    %         \new Staff \transpose c c { 
    %             \include "ly/ily/staff-properties.ily"
    %             \override Stem.length-fraction = #(magstep 1.0)
    %             \kathyRepeated
    %         }
    %     >>
    %     \header {
    %         title = ""
    %         subtitle = ""
    %         composer = ""
    %         piece = \markup \center-column { "Repeated Notes"  " " }
    %     }
    % }

    % \score {
    %     << 
    %         \override Score.RehearsalMark.self-alignment-X = #LEFT
    %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    %         \new Staff \transpose c c { 
    %             \include "ly/ily/staff-properties.ily"
    %             \override Stem.length-fraction = #(magstep 1.0)
    %             \kathyRegister
    %         }
    %     >>
    %     \header {
    %         title = ""
    %         subtitle = ""
    %         composer = ""
    %         piece = \markup \center-column { "Registers"  " " }
    %     }
    % }

    % \score {
    %     << 
    %         \override Score.RehearsalMark.self-alignment-X = #LEFT
    %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    %         \new Staff \transpose c c { 
    %             \include "ly/ily/staff-properties.ily"
    %             \override Stem.length-fraction = #(magstep 1.0)
    %             \kathyAlternating
    %         }
    %     >>
    %     \header {
    %         title = ""
    %         subtitle = ""
    %         composer = ""
    %         piece = \markup \center-column { "Arternating Long and Short"  " " }
    %     }
    % }

    % \score {
    %     << 
    %         \override Score.RehearsalMark.self-alignment-X = #LEFT
    %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    %         \new Staff \transpose c c { 
    %             \include "ly/ily/staff-properties.ily"
    %             \override Stem.length-fraction = #(magstep 1.0)
    %             \kathyStaccato
    %         }
    %     >>
    %     \header {
    %         title = ""
    %         subtitle = ""
    %         composer = ""
    %         piece = \markup \center-column { "Short (Staccato)"  " " }
    %     }
    % }
}