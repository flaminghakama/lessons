\version "2.19.81"

titleLeft = "Speed"
titleRight = "ball"
title = "Speedball"
composerName = "L. Morgan"

%{

killPreview ; rm speedball*pdf ;  lilypond ly/songs/jazz/speedball.ly  ; for file in speedball*.pdf ; do op $file ; done  

killPreview
rm speedball*pdf
lilypond ly/songs/jazz/speedball.ly
mv speedball*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/speedball*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

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

structure = \relative c' { 
    \key bf \major 
    \tempo "Hard Bop" 4=188

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "A"
    \partial 4 s4
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \bar "[|:" \break }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 0 )
    \startSectionNoBarline "B"
    \repeat volta 2 { 
        s1*4 \break 
        s1*4 
        \bar ":|]" 
    }
}

melodyA = \relative c' { 
    f4 ||
    ef'8. f16  cs8. d16  bf4 r | 
    r8 <ef g,> r <d f,> r <bf d,> r f | 
    <af c,>8 <bf d,> <c ef,> <bf d,> ~ 4 g |
    ef8 f g f ~ 4 r8 bf |

    ef8. f16  cs8. d16  bf4 r | 
    r8 <ef g,> r <df f,> r <bf df,> r f | 
    <af c,>8 <bf d,?> <g bf,> <f af,>  <bf d,>4 <af c,>8 <f af,> ~ | 
    <f af,>4 <e g,>8 <f af,>  r <f af,>8 16 16 r8 | 

    r8 ef r g r bf r df | 
    <ef g,>8 8 <df f,> <ef g,> r <c ef,> <bf d,> [ f ] |
    <af c,>4 r8 f <a ef> <bf f> <c g> <df af> ~ | 
    <df af>2 r8. f,16 e8. f16 ||
    <df' af>2.\repeatTie r8 
}
melodyB = \relative c' { 
    f8 ||
    <bf d,>4 8 8 <af c,> <bf d,> r4 | 
    r8 af f [ ef ~ ] 8 c ef f |
    af4 bf8 f af bf r <c ef> ~ | 
    <c ef>4. <af d>8 ~ 4 f | 

    <bf d,>4 8 8 <af c,> <bf d,> r4 | 
    r8 af f [ ef ~ ] 8 c ef f |
    af4 8 8 f af r4 | 
    r4 r8 bf,_\markup { \huge "Fine" } ~ 4 r | 
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 
    bf1:7 | ef:7 | bf:7 | s | 
    ef1:7 | s | bf:7 | d2:m7 g:7 | 
    c1:m7 | f:7 | bf:7 | s || s ||


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
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

% \book {
%   \bookOutputSuffix "for-Bb"
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
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsForm
%             }
%             \new Staff 
%             \with { \consists "Merge_rests_engraver" } 
%             \keepWithTag #'(C) \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \melody
%                 >>
%                 \noPageBreak
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "for-Eb"
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
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsForm
%             }
%             \new Staff 
%             \with { \consists "Merge_rests_engraver" } 
%             \keepWithTag #'(C) \transpose c c {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structure
%                     \melody
%                 >>
%                 \noPageBreak
%             }
%         >>
%     }
% }

