\version "2.24.0"

titleLeft = "St."
titleRight = "Thomas"
titleFull = "St. Thomas"
composerName = "S. Rollins"
arranger = ""
copyright = ""

%{

killPreview ; rm st-thomas*pdf ;  lilypond ly/songs/jazz/st-thomas.ly  ; for file in st-thomas*.pdf ; do op $file ; done  

killPreview
rm st-thomas*pdf
lilypond ly/songs/jazz/st-thomas.ly
mv st-thomas*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/st-thomas*.pdf ; do op $file ; done  

git add . ; git commit -m"transposed for Eb" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}



\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #17

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

structureTranscription = \relative c' { 

    \key c \major
    \tempo 4=210
    \time 4/4
    \startSectionNoBarline "1"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    \startSectionNoBarline "2"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    \bar "|."
}


drumsKick = \relative c' { 
    c4 r2. |
}
drumsTom = \relative c' { 
    r4 r8 e r e r e | 
}
drumsHat = \relative c' { 
    r4 b r b | 
}
drumsSnare = \relative c' { 
    r8 c8 4 r2 |
}


structureTranscription = \relative c' { 

    \key c \major
    \tempo 4=210
    \time 4/4

 % }
    \startSectionNoBarline "Solo"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSectionNoBarline ""
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSectionNoBarline ""
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
}

transcriptionChorusOne = \relative c'' { 
    r4 r8 a d,4 r | r4 r8 a' ds,4 r | 
    r8 a' ds, [ a' ] r2 | r8 a fs [ a ] e a ds, a' | 
    d,4 r r8 a' e4 | r8 a e4 r8 a r4 | 
    r8 a e4 r8 a ds, [ a' ] | d,4 r8 a' fs a e a |  

    d,4 r4 r8 a' fs [ a ]| cs e g ds  fs c a as | 
    b8 g e a  fs g b d | fs4  b,8 d  f cs bf gs |
    a8 d, r4  r8 a' fs4 | r8 a g4  r8 b gs4 | 
    r4 r8 a  ds,4 r8 a' |  
}


rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s4

    %\override Score.RehearsalMark.extra-offset = #'( -4 . -5 )
    % "A"
    s1*12
        
    \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
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
    r4 g8 c r b r a | g4 a e f | g c b c | R1 | 
    r8 g r c r b r a | g4 a e f | g c b c | R1 | 
    e2 f4. g8 | R1 | f2 e4. d8 | R1 | 
    e2 d | c4. a8 ~ 4 r | g4 c b c R1 ||

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

% \book {
%   \bookOutputSuffix "in-C-for-C"
%     \header {
%         title = \title
%         composer = \composerName
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%         subtitle = ""
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c { 
%                 \chordsForm
%             }
%             \new RhythmicStaff \with {
%                     \remove "Staff_symbol_engraver"
%                     \remove "Time_signature_engraver" 
%                     \magnifyStaff #5/7
%                 } {
%             }
%             \new Staff = "lead" \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \rehearsalMarkTweaksForC
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Eb-for-C"
%     \header {
%         title = \title
%         composer = \composerName
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%         subtitle = "(For Alto in C)"
%     }
%     \score {
%         \transpose c ef <<
%             \new ChordNames \transpose c c { 
%                 \chordsForm
%             }
%             \new RhythmicStaff \with {
%                     \remove "Staff_symbol_engraver"
%                     \remove "Time_signature_engraver" 
%                     \magnifyStaff #5/7
%                 } {
%             }
%             \new Staff = "lead" \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \rehearsalMarkTweaksForC
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Bb-for-C"
%     \header {
%         title = \title
%         composer = \composerName
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%         subtitle = "(For Tenor/Trumpet in C)"
%     }
%     \score {
%         \transpose c bf, <<
%             \new ChordNames \transpose c c { 
%                 \chordsForm
%             }
%             \new RhythmicStaff \with {
%                     \remove "Staff_symbol_engraver"
%                     \remove "Time_signature_engraver" 
%                     \magnifyStaff #5/7
%                 } {
%             }
%             \new Staff = "lead" \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \rehearsalMarkTweaksForC
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-C-for-Bb"
%     \header {
%         title = \title
%         composer = \composerName
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%         subtitle = ""
%     }
%     \score {
%         \transpose bf, c <<
%             \new ChordNames \transpose c c { 
%                 \chordsFormForFlats
%             }
%             \new RhythmicStaff \with {
%                     \remove "Staff_symbol_engraver"
%                     \remove "Time_signature_engraver" 
%                     \magnifyStaff #5/7
%                 } {
%             }
%             \new Staff = "lead" \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \rehearsalMarkTweaksForC
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-C-for-Eb"
%     \header {
%         title = \title
%         composer = \composerName
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%         subtitle = ""
%     }
%     \score {
%         \transpose ef, c <<
%             \new ChordNames \transpose c c { 
%                 \chordsFormForFlats
%             }
%             \new RhythmicStaff \with {
%                     \remove "Staff_symbol_engraver"
%                     \remove "Time_signature_engraver" 
%                     \magnifyStaff #5/7
%                 } {
%             }
%             \new Staff = "lead" \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \rehearsalMarkTweaksForC
%                     \melody
%                 >>
%             }
%         >>
%     }
% }


\book {
  \bookOutputSuffix "transcription-for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Tenor Sax"
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
                    \structureTranscription
                    \rehearsalMarkTweaksForC
                    \transcriptionChorusOne
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "transcription-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef bf <<
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
                    \structureTranscription
                    \rehearsalMarkTweaksForC
                    \transcriptionChorusOne
                >>
            }
        >>
    }
}
