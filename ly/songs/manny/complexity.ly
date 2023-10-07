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
    \tempo 4=240

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "A"
    \time 4/4
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 0 )
    \startSection "B"
    \time 12/8
    s1.*3 
    \bar "||"
    \time 4/4
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "A"
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
        d2:m7.5- g:7 | c1:maj7 ||
        d2:m7 g:7 | a2:m7.5- e:m7.5- ||
    
    g1.:m9 | fs:m9 | f:m9 | fs2:m9 b:7 | 
    f2:7 bf:7 | fs:m7 b:7 | f:7 e4:m7.5- a:7.5-.9- || 

    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
    d2:m7.5- g:7.5-.9- | e:m7.5- a:7.5-.9- |
    d2:m7.5- g:7 | c1:maj7 ||

}

firstEndingLick = \relative c' {
    c16 ef \tuplet 3/2 { e16 g b }  d df c e   b bf c a'  fs4 
}


bassACommon = \relative c' { 
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
    d2 a4 af | g2 ds | e g4 gs | a2  e4 ef |
}
bassAFirstEnding = \relative c' { 
    d2 a4 af | g2 d | 
    \transpose c c, \firstEndingLick
}
bassASecondEnding = \relative c' { 
    d2 a4 af | g2 d | 
    a8. e16  c8 cs  d g4. || 
}
bassAThirdEnding = \relative c' { 
    \bassAFirstEnding
}
bassB = \relative c' { 

    g4 d' g  a8 g a ~ 4. |     
    fs4 cs' fs  gs8 fs gs ~ 4. |     
    f4 c' f  g8 f g ~ 4. |     
    \comp #4
    \comp #16
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


melodyACommon = \relative c'' { 
    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    r8. d'16  e d b d   cs bf g gs  a4 | 

    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    r8. d'16  e d b d   cs bf g gs  a4 | 

    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    r8. d'16  e d b d   cs bf g gs  a4 | 

}
melodyAFirstEnding = \relative c'' { 
    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    \firstEndingLick
}
melodyASecondEnding = \relative c'' { 
    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    a16 gs a b  c b c d  e ds e gs  a4 ||
}
melodyAThirdEnding = \relative c'' { 
    r4  \tuplet 3/2 { b16 [ c b } bf16 d ]  a8 af16 g r4 |
    a16 gs a b  c b c d  a'16 [ d, \tuplet 3/2 { fs16 a d ] }  bf16 fs a af   ||
}
melodyB = \relative c'' { 
    g4 8 bf d f  a8 bf a ~ 4. | 
    fs,4 8 a cs e  gs8 a gs ~ 4. | 
    f,4 8 af c ef  g8 af g ~ 4. | 

    r4  \tuplet 3/2 { cs,16 [ ds cs } c16 b ]  bf16 fs g gs  a4 |
    r4 bf16 af c, ef  \grace { fs8 ( } g16 ) c fs, c'  f,4 |   

    r4  \tuplet 3/2 { cs'16 [ ds cs } c16 b ]  bf16 fs g gs  a4 |
    r4 bf16 af c, ef  g16 [ \tuplet 3/2 { d'32 e d } b16 d ]  cs4 | 

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

