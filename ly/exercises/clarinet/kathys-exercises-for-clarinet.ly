\version "2.24.0"
\include "english.ly"

titleLeft = "Kathy's Exercises"
titleRight = "for Clarinet"
titleFull = "Kathy's Exercises for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 


\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{


rm kathys-exercises-for-clarinet.pdf
lilypond ly/exercises/clarinet/kathys-exercises-for-clarinet.ly 
#python ~/git/part-format/bookify-7page.py kathys-exercises-for-clarinet.pdf kathys-exercises-for-clarinet-printable.pdf automatic
mv kathys-exercises-for-clarinet.pdf pdf
#mv kathys-exercises-for-clarinet-printable.pdf pdf/printable

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
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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

% These exercises are all based on one note.
% Repeat them for each note you know.
% This cover volumes medium, soft, loud, soft to loud gradually, loud to soft gradually, and several others. 
% Play the note as long as you can.  
% For the ones at a consistent dynamic, try to keep the volume the same all the way through.
% For the ones that change dynamics, try to get the volume the change in a consistent way, so it gradually changes.

        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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

% This exercise is about how to play repeated notes with different levels of separation between notes.
% The basic technique involves using a single breath to span several notes, in conjunction with using the tongue to press against the reed to separate them into distinct notes.
% Sound occurs when the reed is vibrating, so to get the separation we stop the reed from vibrating by pushing the tip of the tongue into the tip of the reed (or just below the tip.)

% For these exercises we explore different amounts of stopping the sound by pressing the tongue against the reed.
% The first one has entire beats of rest, in which case we exaggerate the technique by stopping the reed with the tongue while continuing to provide air pressure throughout the entire rest.
% The 2nd one is the other extreme, where there are no rests, and the individual notes are as long as possible.  In this case, we want to learn to use as little of the tongue as necessary to pause the sound, more like a pulse than a complete stop.

% Like the dynamics exercise, these exercises are all based on one pitch.
% Repeat these exercises for each note you know.including.

        }
    }

    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
            \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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