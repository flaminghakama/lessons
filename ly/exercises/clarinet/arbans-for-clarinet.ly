\version "2.24.0"
\include "english.ly"

titleLeft = "Arban's #6"
titleRight = "for Clarinet"
titleFull = "Arban's #6 for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


%{

killPreview ; rm arbans-for-clarinet.pdf ; lilypond ly/exercises/clarinet/arbans-for-clarinet.ly 


rm arbans-for-clarinet.pdf
lilypond ly/exercises/clarinet/arbans-for-clarinet.ly 
#python ~/git/part-format/bookify-7page.py arbans-for-clarinet.pdf arbans-for-clarinet-printable.pdf automatic
mv arbans-for-clarinet.pdf pdf/exercises/clarinet
open -a Preview pdf/exercises/clarinet/arbans-for-clarinet.pdf
#mv arbans-for-clarinet-printable.pdf pdf/printable

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
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

\include "ly/notes/arbans.ily"


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
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "C Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c g, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "G Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c f, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "F Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c bf, { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "Bb Major"  " " }
        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
            \new Staff \transpose c d { 
                \include "ly/ily/staff-properties.ily"
                \arbans
            }
        >>
        \header {
            title = ""
            subtitle = ""
            composer = ""
            piece = \markup \center-column { "A Major"  " " }
        }
    }
}