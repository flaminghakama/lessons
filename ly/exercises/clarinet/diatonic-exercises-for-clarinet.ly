\version "2.19.83"
\include "english.ly"

titleLeft = "Diatonic Exercises"
titleRight = "for Clarinet"
title = "Diatonic Exercises for Clarinet"
composerName = "Elaine Paul"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{
killPreview ; rm diatonic-exercises-for-clarinet*.pdf ; lilypond ly/exercises/clarinet/diatonic-exercises-for-clarinet.ly  ; op diatonic-exercises-for-clarinet.pdf 

rm diatonic-exercises-for-clarinet*.pdf
lilypond ly/exercises/clarinet/diatonic-exercises-for-clarinet.ly
mv diatonic-exercises-for-clarinet.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/diatonic-exercises-for-clarinet.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding the rest of the diatonic exercises" ; git push 
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
    markup-system-spacing.padding = #3

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #16

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

\include "ly/notes/diatonic/clarinet/diatonic-C-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-F-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-G-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-B-flat-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-D-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-E-flat-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-A-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-E-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-A-flat-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-B-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-D-flat-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-F-sharp-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-G-flat-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-C-sharp-major.ily"
\include "ly/notes/diatonic/clarinet/diatonic-C-flat-major.ily"

\include "ly/notes/clarinet-articulation.ily"
\include "ly/notes/arpeggio-exercises/grand-for-clarinet.ily"
\include "ly/notes/arpeggio-exercises/dominant-for-clarinet.ily"

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

\book { 
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

    \include "ly/bookparts/diatonic/clarinet/diatonic-C-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-G-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-F-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-D-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-B-flat-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-A-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-E-flat-Major.ily"

    \include "ly/bookparts/diatonic/clarinet/diatonic-E-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-A-flat-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-B-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-D-flat-Major.ily"

    \include "ly/bookparts/diatonic/clarinet/diatonic-F-sharp-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-G-flat-Major.ily"

    \include "ly/bookparts/diatonic/clarinet/diatonic-C-sharp-Major.ily"
    \include "ly/bookparts/diatonic/clarinet/diatonic-C-flat-Major.ily"

}


