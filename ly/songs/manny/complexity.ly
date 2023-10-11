\version "2.19.81"

titleLeft = "Complex"
titleRight = "ity"
title = "Complexity"
composerName = "M. Berry"

%{

killPreview ; rm complexity*pdf ;  lilypond ly/songs/manny/complexity.ly  ; for file in complexity*.pdf ; do op $file ; done  

killPreview
rm complexity*pdf
lilypond ly/songs/manny/complexity.ly
mv complexity*.pdf pdf/songs/manny
for file in pdf/songs/manny/complexity*.pdf ; do op $file ; done  

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
    \key c \major 
    \once \override Score.MetronomeMark #'extra-offset = #'( -7 . -2.5 )
    \tempo 4=240

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -2.5 . -3 )
    \startSection "A"
    \time 4/4
    \bar "[|:"
    \repeat volta 2 { 
        s8. 
    \once \override Score.MetronomeMark #'extra-offset = #'( -3 . 1 )
            \tempo \markup { \bold \huge "Bop" } s16 s2. | s1*3
        s1*4 \break
        s1*4
        s1*2 \break
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( -6.5 . 5.5 )
    \startSection "B"
    \once \override Score.MetronomeMark #'extra-offset = #'( -3.5 . 0.5 )
    \tempo \markup \line {
        \lower #0.01 \concat {
            " "
            \smaller \general-align #Y #DOWN \note {2} #1
            " = "
            \smaller \general-align #Y #DOWN \note {4.} #1
        }
        \bold \huge "Afro-latin" 
    }
    \time 6/8
    s2.*6 \break

    \once \override Score.MetronomeMark #'extra-offset = #'( -4 . 1 )
    \tempo \markup {
        \lower #0.01 \concat {
            " "
            \smaller \general-align #Y #DOWN \note {4.} #1
            " = "
            \smaller \general-align #Y #DOWN \note {2} #1
        }
        \bold \huge "Bop" 
    }

    \time 4/4
    \bar "||"
    s1*8 
    \pageBreak

    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7 | 
        c1:maj7 | s ||
        a1:m7.5- | d:aug7.9+ ||
    
    g2.:m9 | s | 
    fs2.:m9 | s | 
    f2.:m9 | s | 

    fs1:7 | b:7 | 
    f1:m7 | bf:7 | 
    fs1:7 | b:7 | 
    f2:m7 bf:7 | e:m7.5- a:7.5-.9- || 

    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7 | c1:maj7  | s ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7 | 
        c1:maj7 | s ||
        a1:m7.5- | d:aug7.9+ ||
    
    g2.:m9 | s | 
    gf2.:m9 | s | 
    f2.:m9 | s | 

    gf1:7 | cf:7 | 
    f1:m7 | bf:7 | 
    gf1:7 | cf:7 | 
    f2:m7 bf:7 | e:m7.5- a:7.5-.9- || 

    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7.5-.9- | e:m7.5- | a:7.5-.9- |
    d1:m7.5- | g:7 | c1:maj7  | s ||
}

firstEndingLick = \relative c' {
    \tuplet 3/2 4 { e?8 c ef  e g b }  d8 df c e |  b bf c a'  fs2 
}
firstEndingLickForFlats = \relative c' {
    \tuplet 3/2 4 { e?8 c ef  e g b }  d8 df c e |  cf bf c a'?  fs2 
}


bassACommon = \relative c' { 
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
    d2 a4 af | g2 d | 
}
bassAFirstEnding = \relative c' { 
    \transpose c c, \firstEndingLick
}
bassASecondEnding = \relative c' { 
    a8. e16  c8 cs  d g4. || 
}
bassAThirdEnding = \relative c' { 
    \bassAFirstEnding
}
bassB = \relative c' { 
    g8 d' g  a g a ~ | 2. |     
    fs8 cs' fs  gs fs gs ~  | 2. |     
    f4 c' f  g f g ~ | 2. |     
    \comp #32
}

bassline = \relative c'' { 
    \accidentalStyle default
    \bassACommon
    \bassAFirstEnding
    \bassASecondEnding
    \bassB
    \bassACommon
    \bassAThirdEnding
}


melodyALickOne = \relative c'' { 
    r2  \tuplet 3/2 { b8 c b } bf8 d | a4 af8 g r2 |
}
melodyALickOneRepeat = \relative c'' { 
    r2  \tuplet 3/2 { b?8 c b } bf8 d | a4 af8 g r2 |
}
melodyALickTwo = \relative c' { 
    r4. d'8  e d b d   cs bf g gs  a2 | 
}

melodyACommon = \relative c'' { 
    \melodyALickOne
    \melodyALickTwo
    \melodyALickOneRepeat
    \melodyALickTwo
    \melodyALickOneRepeat
    \melodyALickTwo
    \melodyALickOneRepeat
}
melodyAFirstEnding = { 
    \firstEndingLick
}
secondEndingLick = \relative c'' { 
    a8 gs a b  c b c d  | a' d, \tuplet 3/2 { fs8 a d }  bf8 fs a af  ||
}
melodyASecondEnding = { 
    \secondEndingLick
}
melodyASecondEndingForEb = { 
    \transpose c c, \secondEndingLick
}
melodyAThirdEnding = \relative c'' { 
    \firstEndingLick
}
melodyBPartOne = \relative c'' { 
    g4 8  bf d f  | a bf a ~ 4. | 
    fs,4 8  a cs e | gs a gs ~  4. | 
    f,4 8  af c ef | g af g ~  4. | 
}
melodyBPartOneForFlats = \relative c'' { 
    g4 8  bf d f  | a bf a ~ 4. | 
    gf,4 8  bff df ff | af bff af ~  4. | 
    f,?4 8  af c ef | g af g ~  4. | 
}
melodyBLickOne = \relative c'' { 
    r2 \tuplet 3/2 { cs8 ds cs } c8 b |  bf8 fs g gs  a2 |
}
melodyBLickOneForFlats = \relative c'' { 
    r2 \tuplet 3/2 { df8 ef df } c8 cf |  bf8 gf g af  bff2 |
}
melodyBPartTwo = { 
    \melodyBLickOne
    \relative c'' {
        r2  bf8 af c, ef  | \grace { fs8 ( } g8 ) c gf c  f,2 | 
    }  

    \melodyBLickOne
    \relative c'' {
        r2  bf8 af c, ef  | g8 [ \tuplet 3/2 { d'16 e d ] } b8 d  cs2 | 
    }
}
melodyBPartTwoForFlats = { 
    \melodyBLickOneForFlats
    \relative c'' {
        r2  bf8 af c, ef  | \grace { fs8 ( } g8 ) c gf c  f,2 | 
    }  

    \melodyBLickOneForFlats
    \relative c'' {
        r2  bf8 af c, ef  | g8 [ \tuplet 3/2 { d'16 e? d ] } b?8 d  cs2 | 
    }
}
melodyB = { 
    \melodyBPartOne
    \melodyBPartTwo
}
melodyBForBb = \relative c'' { 
    \melodyBPartOneForFlats
    \melodyBPartTwoForFlats
}
melodyBForEb = \relative c'' { 
    \transpose c c, \melodyBPartOneForFlats
    \melodyBPartTwoForFlats
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyACommon
    \melodyAFirstEnding
    \melodyASecondEnding
    \melodyB
    \melodyACommon
    \melodyAThirdEnding
}
melodyForBb = \relative c'' { 
    \accidentalStyle default
    \melodyACommon
    \firstEndingLickForFlats
    \melodyASecondEndingForEb
    \melodyBForBb
    \melodyACommon
    \firstEndingLickForFlats
}
melodyForEb = \relative c'' { 
    \accidentalStyle default
    \melodyACommon
    \firstEndingLickForFlats
    \melodyASecondEndingForEb
    \melodyBForEb
    \melodyACommon
    \firstEndingLickForFlats
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
        \transpose c c <<
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
            % \new Staff 
            % \with { \consists "Merge_rests_engraver" } 
            % \keepWithTag #'(C) \transpose c c {
            %     \include "ly/ily/staff-properties.ily"
            %     \autoPageBreaksOff
            %     <<
            %         \structure
            %         \bassline
            %     >>
            %     \noPageBreak
            % }
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormForFlats
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForBb
                >>
                \noPageBreak
            }
            % \new Staff 
            % \with { \consists "Merge_rests_engraver" } 
            % \keepWithTag #'(C) \transpose c c {
            %     \include "ly/ily/staff-properties.ily"
            %     \autoPageBreaksOff
            %     <<
            %         \structure
            %         \bassline
            %     >>
            %     \noPageBreak
            % }
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormForFlats
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForEb
                >>
                \noPageBreak
            }
            % \new Staff 
            % \with { \consists "Merge_rests_engraver" } 
            % \keepWithTag #'(C) \transpose c c {
            %     \include "ly/ily/staff-properties.ily"
            %     \autoPageBreaksOff
            %     <<
            %         \structure
            %         \bassline
            %     >>
            %     \noPageBreak
            % }
        >>
    }
}

