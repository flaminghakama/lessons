\version "2.19.81"

titleLeft = "Rumba"
titleRight = ""
title = "Rumba"
composerName = "Tony"

%{

killPreview ; rm tony-rumba*pdf ;  lilypond ly/songs/jazz/tony-rumba.ly  ; for file in tony-rumba*.pdf ; do op $file ; done  

killPreview
rm tony-rumba*pdf
lilypond ly/songs/jazz/tony-rumba.ly
mv tony-rumba*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tony-rumba*.pdf ; do op $file ; done  

git add . ; git commit -m"placeholder" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #17

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 

    \key e \major
    \tempo 4=220
    \time 4/4

    \startSection "Intro Drums"
    s1*4

    \startSection "Intro Sax"
    s1*4

    \startSection "Intro Conga"
    s1*8

    \startSection "Transition"
    s1*8

    \startSection "A1"
    s1*8

    \startSection "Sax Fill"
    s1*2

    \startSection "A2"
    s1*8

    \startSection "Sax Fill"
    s1*4

    \startSection "B1"
    s1*8

    \startSection "Sax Fill"
    s1*2

    \startSection "B2"
    s1*8

    \startSection "Sax Fill"
    s1*4

    \startSection "Pre-Chorus"
    s1*4

    \startSection "C1"
    s1*12

    \startSection "C2"
    s1*12

    \startSection "Occonal"
    s1*12

}



rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s4

    %\override Score.RehearsalMark #'extra-offset = #'( -4 . -5 )
    % "A"
    s1*12
        
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -4 )
    % B
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    % C
    b1:6 | s | s | s |    
    e1:7| s | s | s |    
    fs1:7 | s | s | s |    
    b1:6 | s | b:7 | s |    
    e1:7| s | s | s |    
    fs1:7 | s | s | s |    
    b1:6 | s | s | s |    
}

chordsFormForFlats= \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}

chordRhythm =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    <>^\markup { " " } s4  || 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 

    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    s1 | 

    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    s1*2 ||

    r8 c4. 4. 8 ~ | 1 | 
    c2 4. 8 ~ | 1 | 
    r8 c4. 4. 8 ~ | 1 | 
    c2 4. 8 ~ | 1 | 
}


melodyA = \relative c'' { 
    \accidentalStyle default
    \tuplet 3/2 { e8 g a b bf a } r2 | 
}

melodyForBb = \relative c' { 
    \melody
}

melodyForEb = \relative c' { 
    \melody
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose c c { 
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

