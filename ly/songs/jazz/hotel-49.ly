\version "2.19.81"

titleLeft = "Hotel"
titleRight = "49"
title = "Hotel 49"
composerName = "C. Baker"

%{

killPreview ; rm hotel-49*pdf ;  lilypond ly/songs/jazz/hotel-49.ly  ; for file in hotel-49*.pdf ; do op $file ; done  

killPreview
rm hotel-49*pdf
lilypond ly/songs/jazz/hotel-49.ly
mv hotel-49*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/hotel-49*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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

structure = \relative c' { 

    \key g \minor
    \tempo 4=220
    \time 4/4
    s1 
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*6 \break
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break }
    }
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*2

    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    
    \startSection "C"
    s1*8 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s1 

    \override Score.RehearsalMark #'extra-offset = #'( -4 . -5 )
    % "A"
    s1*13
        
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    % B
    s1*10 

    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . -10 )
    % A 
    s1*12

    \override Score.RehearsalMark #'extra-offset = #'( -4 . -3 )
    % C
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
    s1 ||
    g1:m | d:m | g:m | d:m | 
    g1:m | d:m | g:m | d:m | 
    c2:m7 f:7 | bf:m7 ef:7 | a1:m7 | d:7 || a:m7 | d:7 ||

    g1:maj7 | s | g:m7 | c:7 | 
    f1:maj7 | s | f:m7 | bf:7 | 
    ef1:maj7 | d:7 ||

    g1:m | d:m | g:m | d:m | 
    g1:m | d:m | g:m | d:m | 
    c2:m7 f:7 | bf:m7 ef:7 | a1:m7 | d:7 ||

    g1:m | d:7 | g:m | d:7 | 
    g1:m | d:7 | g:m | s ||
}

chordsFormForBb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}
chordsFormForEb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}

chordRhythm =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    <>^\markup { " " } R1  || 
    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 
    \comp #8
    s2. r8 c8 | R1 || s1*2

    s1*8 | \comp #3 r8 c | R1 || 

    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 
    r2 c4. 8 ~ | 2 r | 

    s1*4 ||

    r4 r8 c ~ 2 | r4 r8 c ~ 2 | 
    r4 r8 c ~ 2 | r4 r8 c ~ 2 | 
    r4 r8 c ~ 2 | r4 r8 c ~ 2 | 
    c4 r r2 | R1 ||
}


melodyA = \relative c'' {
    r8 a fs [ g ] a bf c d ~ ||
    d1 ~ | 2 f8 d c d ~ | 1 | r8 a fs [ g ] a bf c d ~ | 
    d1 ~ | 2 g8 d c d ~ | 1 ~ | 4 r g, bf | 
    d4. c16 bf a2 | r8 c bf [ af ] g2 |
}
melodyAFirstEnding = \relative c'' {
    r4 b ~ 8 a g fs | r a fs [ g ] a bf c d \laissezVibrer 
}
melodyASecondEndingB = \relative c'' {
    r4 b ~ 8 a g fs ~ | 2  g4 a8 b ~ ||
    b2 ~ 8 d, ds e ~ | 1 | 
    r4 bf' ~ 8 a g bf | r bf4. a4 g8 a ~ | 2 ~ 8 c, cs d ~ | 1 | 
    r4 af'4 ~ 8 g f af | r af4. g4 f8 g ~ | 1 |
}
melodyAThirdEndingC = \relative c'' {
    r4 b ~ 8 a g fs ~ | 4 r <g bf,>4 <a c,>8 <d, bf> ~ ||
    <d bf>1 | <e c> | <fs d> | <e c> | 
    <d bf>1 | <c a> | <bf g>4 \comp #7 ||
}
melodyAThirdEndingCForEb = \relative c' {
    r4 b ~ 8 a g fs ~ | 4 r <g' bf,>4 <a c,>8 <d, bf> ~ ||
    <d bf>1 | <e c> | <fs d> | <e c> | 
    <d bf>1 | <c a> | <bf g>4 \comp #7 ||
}

melody = \relative c' { 
    \accidentalStyle default
    \melodyA
    \melodyAFirstEnding
    \melodyASecondEndingB
    \melodyA
    \melodyAThirdEndingC
}

melodyForBb = \relative c' { 
    \melody
}

melodyForEb = \relative c' { 
    \accidentalStyle default
    \transpose c c, { 
    \melodyA
    \melodyAFirstEnding
    \melodyASecondEndingB
    \melodyA
    }
    \melodyAThirdEndingCForEb
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
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
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForEb
                >>
            }
        >>
    }
}
