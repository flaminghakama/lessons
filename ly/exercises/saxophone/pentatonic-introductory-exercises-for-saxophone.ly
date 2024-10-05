\version "2.24.0"
\include "english.ly"

titleLeft = "Pentatonic Introductory Exercises"
titleRight = "for Saxophone"
titleFull = "Pentatonic Introductory Exercises for Saxophone"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm pentatonic-introductory-exercises-for-saxophone*.pdf ; lilypond ly/exercises/saxophone/pentatonic-introductory-exercises-for-saxophone.ly ; op pentatonic-introductory-exercises-for-saxophone.pdf 

rm pentatonic-introductory-exercises-for-saxophone*.pdf
lilypond ly/exercises/saxophone/pentatonic-introductory-exercises-for-saxophone.ly
mv pentatonic-introductory-exercises-for-saxophone.pdf pdf/exercises/saxophone
op pdf/exercises/saxophone/pentatonic-introductory-exercises-for-saxophone.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding introductory pentatonic exercises 3 and 4 accidentals" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2022 Elaine Paul" } 
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

\include "ly/notes/pentatonic/saxophone/pentatonic-A-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-C-major.ily"



\include "ly/notes/pentatonic/saxophone/pentatonic-D-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-F-major.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-E-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-G-major.ily"



\include "ly/notes/pentatonic/saxophone/pentatonic-G-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-B-flat-major.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-B-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-D-major.ily"



\include "ly/notes/pentatonic/saxophone/pentatonic-C-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-E-flat-major.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-F-sharp-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-A-major.ily"



\include "ly/notes/pentatonic/saxophone/pentatonic-F-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-A-flat-major.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-C-sharp-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-E-major.ily"



\include "ly/notes/pentatonic/saxophone/pentatonic-B-flat-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-D-flat-major.ily"

\include "ly/notes/pentatonic/saxophone/pentatonic-G-sharp-minor.ily"
\include "ly/notes/pentatonic/saxophone/pentatonic-B-major.ily"

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

    % \bookpart { 
    %     \include "../scores/flaming-libs/flaming-title-page.ily"
    %     \markup \title-page-markup "Saxophone" \composerName \title
    % }

    \include "ly/bookparts/pentatonic/saxophone/pentatonic-introductory.ily"
}


