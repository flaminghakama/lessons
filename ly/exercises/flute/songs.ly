\version "2.24.0"
\include "english.ly"

titleLeft = "Songs"
titleRight = ""
titleFull = "Songs "
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2026 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm songs*.pdf ; lilypond ly/exercises/flute/songs.ly ; op songs.pdf 

rm songs*.pdf
lilypond ly/exercises/flute/songs.ly
mv songs.pdf pdf/exercises/flute
op pdf/exercises/flute/songs.pdf

./bin/createIndexes.sh
git add . ; git commit -m"renaming flute fingerings" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\header {
    source = ""
    style = ""
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #4
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #10

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


\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\header { 
    instrumentName = "Flute"
    poet = \instrumentName
}


\include "ly/notes/songs/nursery-rhymes.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

label = #(define-scheme-function (text) (string?)
   #{ 
     \markup \center-column { #text } 
   #})

\book { 

    \bookpart {

        \header {
            % title = ""
            % subtitle = "Part 1 of 3: A Minor"
            % composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \frereJacquesPartOne
                    \transpose c, c \frereJacquesPartTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \label "Frère Jacques in D, lower register" 
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c, d { 
                    \include "ly/ily/staff-properties.ily"
                    \frereJacques
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \label "Frère Jacques in D, middle register" 
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c ef { 
                    \include "ly/ily/staff-properties.ily"
                    \frereJacquesPartOne
                    \transpose c, c \frereJacquesPartTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \label "Frère Jacques in Eb, lower register" 
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c, ef { 
                    \include "ly/ily/staff-properties.ily"
                    \frereJacques
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \label "Frère Jacques in Eb, middle register" 
            }
        }
    }
}