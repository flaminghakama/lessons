\version "2.19.81"

titleLeft = "Fair"
titleRight = "Weather"
title = "Fair Weather"
composerName = "B. Golson"

%{

killPreview ; rm fair-weather*pdf ;  lilypond ly/songs/jazz/fair-weather.ly  ; for file in fair-weather*.pdf ; do op $file ; done  

killPreview
rm fair-weather*pdf
lilypond ly/songs/jazz/fair-weather.ly
mv fair-weather*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/fair-weather*.pdf ; do op $file ; done  

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    %\tempo 4=188
    \time 4/4

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -5 )
    \startSectionNoBarline "Intro"
    s1*8 \break

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \pageBreak
    \bar ":|]"

    \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
    \startSectionNoBarline "A Out"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
    \startSection "B Out"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*5
    \bar "|."
}

chordIntroRhythm = \new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    c2 4. 8 ~ | 1 | r8 c r4 c r | c4. 8 r4 c4 | 
    c2 4. 8 ~ | 1 | r8 c r4 c4. 8 | R1 |    
}

chordsIntro= \chordmode { 
    af1:13 | s | s | s | 
    g1:13 | s | s2.. g8:7.9- | s1 ||
}
chordsCommon= \chordmode { 
    c1:maj7 | e:7 | bf:7.5- | a:aug7 | 
    fs1:m7.5- | b:7 | e:m7.5- | ef:7 |
    af1 | d2:m7 g:7 | e1:m7.5- | a:7 |
}
chordsFirst= \chordmode { 
    fs1:m7.5- | b:7 | e2:m7 a:7 | d:m7 g:7 ||
}
chordsSecond = \chordmode { 
    d1:m7.5- | g:7 | c1 | s ||
}
chordsCoda = \chordmode { 
    d1:m7.5- | g:7 | fs:m7.5- | f:m7 |
    e1:m7 | ef:dim7 | d:m7 | g:aug7.9+ | c:maj7 ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
 
    \chordsCommon
    \chordsFirst
    \chordsCommon
    \chordsSecond

    \chordsCommon
    \chordsFirst
    \chordsCommon
    \chordsCoda
}

melodyIntro = \relative c' {
    R1 | r8 f gf [ bf ] df4 8 bf ~ | 1 ~ | 2. r4 | 
    R1 | r8 e, f [ a ] c4 8 a ~ | 1 | R1 ||
}
melodyCommon = \relative c' { 
    e1 | 1 | 2 ~ \tuplet 3/2 { e4 ds e } | f2 e4. a8 ~ | 
    a1 ~ | 4 r g fs8 g ~ | 1 ~ | 2 4 8 
}
melodyFirstEnding = \relative c'' { 
    g8 ~ |
    g2 ~ \tuplet 3/2 { g4 f e } | d1 | r2 g8 a g a ~ | 1 |
    r2 a8 b a b ~ | 2. a4 | g2 ~ \tuplet 3/2 { g4 f e } | f2. g4 ||
}
melodySecondEnding = \relative c'' { 
    g8 ~ | 
    g2 ~ \tuplet 3/2 { g4 f e } | d2 r8 g4. | \tuplet 3/2 { a4 g a } bf4 c8 a ~ | 
    a2 \tuplet 3/2 { r4 f g } | g4 f af2 ~ | 2 b4. c8 | \comp #8 ||
}

melodyAOut = \relative c' { 
    e8 e ds e r g4. \glissando | e8  e ds e r bf'4. \glissando |
    g8 bf, d e ~ 8 g gs a | r2 r8 a bf [ b ] |

    c4. a8 r e r d | ds2 b'8 c b a |
    g2 \glissando \tuplet 3/2 { d'4 c b } | bf4 \glissando f'2 r4 |

    bf,,4 c8 f e f16 e d8 g | r2 r4 r8 g | 
    r8 bf, d [ g ] f g16 f e8 a | r2 r4 r8 a | 

    r8 c, e [ a ] g a16 g fs8 b ~ | 2. a8 g ~ | 
    g2 ~ \tuplet 3/2 { g4 f e } | f2 r4 g4 ||   
}

melodyAOutGriffin = \relative c' { 
    e8 e ds e r g4. \glissando | e8  e ds e r bf'4. \glissando |
    g8 bf, d e ~ 8 g gs a | r2 r8 a bf [ b ] |

    c4. a8 r e r d | ds2 b'8 c b a |
    g2 \glissando \tuplet 3/2 { d'4 c b } | bf4 f'2 r4 |

    f,8 bf, c f ef f16 ef d8 g | r2 r4 r8 g | 
    r8 bf, d [ g ] f g16 f e8 a | r2 r4 r8 a | 

    r8 c, e [ a ] g a16 g fs8 b ~ | 2. a8 g ~ | 
    g2 ~ \tuplet 3/2 { g4 f e } | f2 r4 g4 ||   
}

melodyCoda = \relative c'' { 
    g8 ~ | 
    g2 ~ \tuplet 3/2 { g4 f e } | d2 r8 g4. | 
    a4 g8 a bf4 c8 a ~ | a2  \tuplet 3/2 { r4 f g } | 
    
    \tuplet 3/2 { af4 f g } af2 ~ | 2 b4. c8 ~ | 
    c1 ~ | 4 b8 c d e d b | 
    c1 ~ | 4 b8 c d e d b | 
    c2. a4 | b2 e4. g8 ~ | \fermata g1 ||
}


harmonyIntro = \relative c' {
    s1*8 
}
harmonyCommon = \relative c' { 
    g1 | gs1 | g | cs2.. e8 ~ | 
    e1 | ds4 r ds4 8 d ~ | 1 | df2. r8   
}
harmonyFirstEnding = \relative c' { 
    af8  ~ | 
    af2 ~ \tuplet 3/2 { af4 d c } | b1 | r2 g'8 a g fs ~ | 2 f | 
    e2.. ds8 ~ | 2. r8 d ~ | d2 cs | c b | 
}
harmonySecondEnding = \relative c' { 
    af8 ~ | 
    af2 ~ \tuplet 3/2 { af4 d c } | b2 r8 b4. | bf2.. cs8 ~ | 2 e, | 
    \tuplet 3/2 { g'4 f e } \tuplet 3/2 { d4 df c } | b2.. c8 |  
    \comp #8
}
harmonyCoda = \relative c' { 
    af8 ~ | 
    af2 ~ \tuplet 3/2 { af4 d c } | b2 r8 b4. | bf2.. cs8 ~ | 2 e, | 
    \tuplet 3/2 { g'4 f e } \tuplet 3/2 { d4 df c } | b2.. e8 ~ |  
    e4 r b'8 a g e | af,1 | g'4 8 a b c b a | gs1 | 
    e2 d4 c | af2. r8 b8 ~ | 1 ||
}

harmonyGriffinCommon = \relative c' { 
    g1 | gs1 | g | cs2.. e8 ~ | 
    e2 ~ 8 cs d ds ~ | 4 r \tuplet 3/2 { b4 c ds4 } | d?2 b8 d c b | bf2..     
}
harmonyGriffinFirstEnding = \relative c' { 
    af8  ~ | 
    af2..  a16 bf | b1 | r2 g'8 a g fs ~ | 2 f | 
    e2.. ds8 ~ | 2. r8 d ~ | d2 cs | c b | 
}
harmonyGriffinSecondEnding = \relative c' { 
    af8 ~ | 
    af2.. b8 ~ | b2. r4  | bf2.. cs8 ~ | 2 e, | 
    \tuplet 3/2 { f'4 d e } f2 | e2.. 8 |  
    \comp #8
}
harmonyGriffinCoda = \relative c' { 
    af8 ~ | 
    af1 | b2. r4  | bf2.. cs8 ~ | 2 e, | 
    \tuplet 3/2 { f'4 d e } f2 | e2.. 8 ~ |  

    e1 | af8 c g bf  f af ef f | g1 | af | 
    f1 | af2.. b8 ~ | 1 ||
}


melodyIn = { 
    \melodyCommon  
    \melodyFirstEnding
    \melodyCommon
    \melodySecondEnding
}

melodyOut = {
    \melodyCommon
    \melodyCoda
}
 
harmonyIn = { 
    \harmonyCommon  
    \harmonyFirstEnding
    \harmonyCommon
    \harmonySecondEnding
}

harmonyOut = {
    \harmonyCommon
    \harmonyCoda
}

harmonyGriffinIn = { 
    \harmonyGriffinCommon  
    \harmonyGriffinFirstEnding
    \harmonyGriffinCommon
    \harmonyGriffinSecondEnding
}

harmonyGriffinOut = {
    \harmonyGriffinCommon
    \harmonyGriffinCoda
}

\layout {
    \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/2)
    }
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
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyIn
                        >>
                        \melodyAOut
                        <<
                            \melodyOut \\
                            \harmonyOut
                        >> 
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Griffin-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Johnny Griffin harmony)"
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyGriffinIn
                        >>
                        \melodyAOutGriffin
                        <<
                            \melodyOut \\
                            \harmonyGriffinOut
                        >> 
                    }
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyIn
                        >>
                        \melodyAOut
                        <<
                            \melodyOut \\
                            \harmonyOut
                        >> 
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Griffin-for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Johnny Griffin harmony)"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyGriffinIn
                        >>
                        \melodyAOutGriffin
                        <<
                            \melodyOut \\
                            \harmonyGriffinOut
                        >> 
                    }
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyIn
                        >>
                        \melodyAOut
                        <<
                            \melodyOut \\
                            \harmonyOut
                        >> 
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Griffin-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Johnny Griffin harmony)"
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordIntroRhythm
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \key c \major 
                    \structure
                    \accidentalStyle default
                    { 
                        \melodyIntro
                        << 
                            \melodyIn \\
                            \harmonyGriffinIn
                        >>
                        \melodyAOutGriffin
                        <<
                            \melodyOut \\
                            \harmonyGriffinOut
                        >> 
                    }
                >>
            }
        >>
    }
}


