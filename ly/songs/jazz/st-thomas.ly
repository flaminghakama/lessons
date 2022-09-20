\version "2.19.81"

titleLeft = "St."
titleRight = "Thomas"
title = "St. Thomas"
composerName = "S. Rollins"

%{

killPreview ; rm st-thomas*pdf ;  lilypond ly/songs/jazz/st-thomas.ly  ; for file in st-thomas*.pdf ; do op $file ; done  

killPreview
rm st-thomas*pdf
lilypond ly/songs/jazz/st-thomas.ly
mv st-thomas*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/st-thomas*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
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

    \key c \major
    \tempo 4=210
    \time 4/4
    \startSectionNoBarline "Head"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }
    \bar ":|][|:"
    \startSectionNoBarline "Solos"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }
    \bar ":|]"
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s4

    %\override Score.RehearsalMark #'extra-offset = #'( -4 . -5 )
    % "A"
    s1*12
        
    \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
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
    c1:6 | e2:m7 a:7 | d:m7 g4:7 c:6 | s1 | 
    c1:6 | e2:m7 a:7 | d:m7 g4:7 c:6 | s1 | 
    e2:m7.5- bf:7 | a1:7 | d2:m7 af:aug7 | g1:7 |
    c2:7 c:9/e | f:6 fs:dim7 | g:1.4.5.7 g4:7 c:6 | s1 |

    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    c1:6 | a:7 | d2:m7 g:7 | c1:6 |
    e1:m7.5- | a:7 | d:m7 | g:7 | 
    c2:7 c:9/e | f:6 fs:dim7 | g:1.4.5.7 g:7| c1:6 |

}

chordsFormForFlats= \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}

melody = \relative c'' { 
    \accidentalStyle default
    r8 g r c r b r a | g4 a e f | g c b c | R1 | 
    r8 g r c r b r a | g4 a e f | g c b c | R1 | 
    e2 f4. g8 | R1 | f2 e4. d8 | R1 | 
    e2 d | c4. a8 ~ 2 | g4 c b c R1 ||

    <>\xmf
    \comp #16
    <>\xmf
    \comp #16
    <>\xmf
    \comp #16
    <>\xmf
    \comp #16
}

melodyForBb = \relative c' { 
    \melody
}

melodyForEb = \relative c' { 
    \melody
}

\book {
  \bookOutputSuffix "in-C-for-C"
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
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(For Alto in C)"
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose c c { 
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
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
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(For Tenor/Trumpet in C)"
    }
    \score {
        \transpose c bf, <<
            \new ChordNames \transpose c c { 
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
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
  \bookOutputSuffix "in-C-for-Bb"
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
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
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

