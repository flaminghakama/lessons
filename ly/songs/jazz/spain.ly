\version "2.19.81"

titleLeft = "Spain"
titleRight = ""
title = "Spain"
composerName = "C. Corea"

%{

killPreview ; rm spain*pdf ;  lilypond ly/songs/spain.ly  ; for file in spain*.pdf ; do op $file ; done  

killPreview
rm spain*pdf
lilypond ly/songs/spain.ly
mv spain*.pdf pdf/songs
for file in pdf/songs/spain*.pdf ; do op $file ; done  

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

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key b \minor 
    \tempo "Rubato"
    \time 4/4
    s1*5 
    \bar "||"
    s1*6
    \once \override BreathingSign.text = \markup { 
        \musicglyph "scripts.caesura.curved" 
    }
    \breathe
    \bar "||" \break

    \startSectionNoBarline "A"
    \tempo 2=96-116
    \bar "[|:" 
    \repeat volta 2 { 
        s1*6 
        \bar "||" 
        s1*4
        \bar "S" \break
        s1*6 | s2. <>_\markup { \line {
            "Last X: D.C. " 
            \box "A"
            "al Fine" } } s4 | s1 || \break
        \startSection "B"
        s1*9
    }        
    \alternative {
        { 
            s1 *4
            \bar ":|]" \break
        }
        { 
            s1*2
            \bar "||"
        }
    }
    \startSection "C"
    s1*8
    \break
    s1*14
    <>_\markup { \line {
            "D.S. to 2nd ending - Repeat "
            \box "C" 
            "for solos"
        } } | s1*2 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b2.:m a4 | b1:m | 
    e2.:m g4 | fs1:7 | b:m |
    g1 | fs:m | e2:m a:1.4.5.7 |
    d4:dim d2.:maj7.13 | g2:7 fs:7 | b1:m ||

    s1*6 ||
    
    g1:maj7 | s | fs:7 | s ||
    e1:m7 | a:7.9- | d:maj7 | s | 
    cs1:7 | fs:7 | b | s ||

    s1*9
    s1*4 || s1*2 ||

    g1:maj7 | s | s | s | 
    fs1:7 | s | s | s | 
    e1:m7 | s | a:7 | s | 
    d1:maj7 | s | g:maj7 | s |  
    cs1:7 | s | fs:7 | s | 
    b1:m | s | b | s ||
}


melodyIntro = \relative c' { 
    fs32 e fs8. ~ 4 ~ 8 16 g a8 \grace { b16 ( } a16 ) g |
    fs32 e fs8. ~ 4 ~ 16 16 g a  b8 cs |

    a16 g g fs \tuplet 3/2 { fs16 e d } e8 ~ 16 fs d cs  d e cs b |
    cs2 ~ 8 16 d e8 d16 cs | 
    cs4 b2. ||

    b'32 a b8. ~ 4 ~ 8 16 cs d8 \grace { e16 ( } d16 ) cs | 
    a32 g a8. ~ 4 ~ 8 cs  b16 a g a |
    g16 a g a  b4  fs8 g16 fs  g fs e d |

    cs8. d32 e fs2 ~ 8 e16 d | 
    cs16 d cs d e2 ~ 8 d16 cs | 
    cs4 b2. || 
}

melodyAFirst = \relative c'' { 
    d4 fs8 d e d b d ~ | 8 cs a cs ~ 8 b g4 | 
    <a fs>4. 8 r4 4 ~ | 2 <fs cs>4. 8 |  
    r4 2. ~ | 2 r4 }

melodyASecond = \relative c' { 
    <fs as,>4 ||

    <g b,>4. <a cs,>8 ~ 4 <b d,> | <cs e,>4. <d fs,>8 ~ 4 <e g,> |  
    <d fs,>4. <cs e,>8 ~ 2 ~ | 2. <fs, as,>4 | 

    <g b,>4. <a cs,>8 ~ 4 <b d,> | <cs e,>4. <d fs,>8 ~ 4 <e g,> |  
    << \relative c'' { d4 e8 fs8 ~ 2 ~ | 2 } \\
       \relative c'' { a1 ~ | 2 } >> r8 e4 d8 |

    << \relative c'' \tuplet 3/2 { cs2 d e } \\ \relative c'' { as1 } >> |
    <d a>2 <cs g> | 
    << \relative c'' { cs4. b8 ~ 2 ~ | 1 } \\
       \relative c' { e4. ds8 ~ 4 fs ~ | 1 } >> ||
}

melodyBFirst = \relative c'' { 
    b4 r8 e r4 r8 g | fs4 d8 b e4 r8 a,8 | 
    r4 r8 d8 cs4 r | a8 b8 r g r g d'4 | 
    e4 r8 e g4 fs8 d | b4 d8 b e4 cs8 b | 
    r8 fs e4 r8 fs r b | cs4. as8 ~ 8 gs fs4 | 
}
melodyBSecond = \relative c' { 
    r8 cs fs [ cs ] gs' cs, as' a ~ |
    a8 fs4 fs'8 r4 
}
melodyBThird = \relative c'' {   
    <fs cs>4 | 
    <e b>2 <d a>4. << \relative c'' { b8 ~ | 1 ~ | 1 } \\
                      \relative c' { fs8 ~ | 2. cs4 ~ | 1 } >> ||
}
melodyBFourth = \relative c'' {   
    a8 fs4 fs'8
}

melodyCFirst = \relative c'' {
    r4 fs | e2 d4. b8 ~ || 1 ~ | 1 ~ | 1 | \tuplet 3/2 { r4 b cs } \tuplet 3/2 { d4 cs b }  |
    d4. cs8 ~ 4 as ~ | 1 ~ | 1 ~ | 2 fs' | 
    e4. d8 ~ 4 b ~ | 1 ~ | 1 | \tuplet 3/2 2 { r4 a b  cs d e }  |
    d4. e8 ~ 4 fs ~ | 1 ~ | 1 | r4 e ~ 8 d4. | 
    cs4. d8 ~ 4 e ~ | 1 ~ | 1 | r4 d4 ~ 8 cs4. | 
    cs2. b4 ~ | 1 | ds4 e8 fs ~ 2 ~ | 2 r4
}
melodyCLast = \relative c' {
    <fs as,>4 ||
}

melody = \relative c' { 
    \melodyIntro
    \melodyAFirst
    \melodyASecond
    \melodyBFirst
    \melodyBSecond
    \melodyBThird
    \melodyBFourth
    \melodyCFirst
    \melodyCLast
}

melodyForEb = \relative c' { 
    \melodyIntro
    \transpose c' c \melodyAFirst
    \melodyASecond
    \transpose c' c \melodyBFirst
    \melodyBSecond
    \transpose c' c \melodyBThird
    \melodyBFourth
    \transpose c' c \melodyCFirst
    \melodyCLast
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
            \new Staff = "lead" \transpose c c {
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
        <<
            \new ChordNames \transpose bf c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose bf, c {
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
        <<
            \new ChordNames \transpose ef c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForEb
                    { 
                        s1*5
                        s1*6 ||
                      
                        s1*6 ||
                        s1*4 \pageBreak
                    }
                >>
                \noPageBreak
            }
        >>
    }
}

