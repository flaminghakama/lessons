\version "2.19.15"
\include "english.ly"

titleLeft = "Kathy's Exercises"
titleRight = "for Clarinet"
title = "Kathy's Exercises for Clarinet"
composerName = "Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
%\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
%\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-dynamics.ily"

%{

rm kathys-exercises-for-clarinet.pdf
lilypond ly/kathys-exercises-for-clarinet.ly 
#python ~/git/part-format/bookify-7page.py kathys-exercises-for-clarinet.pdf kathys-exercises-for-clarinet-printable.pdf automatic
mv kathys-exercises-for-clarinet.pdf pdf
#mv kathys-exercises-for-clarinet-printable.pdf pdf/printable

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2021 Elaine Paul" } 
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

\include "ly/notes/kathys.ily"


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
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyDynamics
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Dynamics"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyFingering
                \pageBreak
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Keep Fingers Close"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathySustain
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Light Tounging"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyRepeated
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Repeated Notes"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyRegister
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Registers"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyAlternating
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Arternating Long and Short"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.0)
                \kathyStaccato
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Short (Staccato)"  " " }
        }
    }
}