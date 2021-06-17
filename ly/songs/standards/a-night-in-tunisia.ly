\version "2.19.81"

titleLeft = "A Night in"
titleRight = "Tunisia"
title = "A Night in Tunisia"
composerName = "D. Gillespie"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm a-night-in-tunisia*pdf
lilypond ly/songs/standards/a-night-in-tunisia.ly
mv a-night-in-tunisia*.pdf pdf/songs/standards
for file in pdf/songs/standards/a-night-in-tunisia*pdf ; do open -a Preview $file ; done

%}


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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 2 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key d \minor
    \time 4/4
    \partial 8*1 s8
    \mark \markup \box "Bass Into"
    \repeat volta 2 {
        \bar "[|:"
        s1*4 \break
    }
    \mark \markup \box "Sax Into"
    \repeat volta 2 {
        \bar ":|][|:"
        s1*3
    }
    \alternative {
        { 
            s1 
            \bar ":|]"
            \break
        }
        { 
            s1 
        }
    }

    \mark \markup \box "A"
    \repeat volta 2 {
        \bar "S[|:"
        s1*7
    }
    \alternative {
        { 
            s1 
            \bar ":|]"
        }
        { 
            s1 
            \bar "||"
        }

    }

    \mark \markup \box "B" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "A" 
    s1*4 \break
    s1*4
    \bar "||" \pageBreak

    \mark \markup \box "Break" 
    s1*12 
    \bar "||" \break
}
structureBreak = \relative c' { 
    s1*4
    \bar "|."
}
structureSolo = \relative c' { 
    s1*4 
    \bar "||"
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1 
    \bar "|."
}

structureBird = \relative c' {
    \structure
    \structureSolo
}
structureDizzy = \relative c' {
    \structure
    \structureBreak
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    ef1:7 | d:m6 | ef:7 | d:m6 ||

    ef1:7 | d:m6 | ef:7 | d:m6 ||
                        | d:m6 ||

    ef1:7 | d:m6 | ef:7 | d:m6 ||
    ef1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 ||
                                     | d1:m6 ||

    a1:m7.5- | d:7.9- | g2:m6 g:m/fs | g:m7 c:7 | 
    g1:m7.5- | c:7.9- | f1:maj7 | e2:m7.5- a:7.5-.9- ||


    ef1:7 | d:m6 | ef:7 | d:m6 ||
    ef1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 ||

    e1:m | s | ef:7.11+ | s | 
    d1:m | s | g:7.5- | s | 
    g1:m7.7+ | g:m7 | gf:7.9+ | s1 ||
    f1:maj7 | s | e:m7.5- | a:7.9- ||
}
chordsSolo = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1:7 | d:m6 | ef:7 | d:m6 ||
    ef1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 ||

    ef1:7 | d:m6 | ef:7 | d:m6 ||
    ef1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 ||

    a1:m7.5- ||
}

melodyBassIntro = \relative c' { 
    bf8 || \repeat percent 2 {  ef, bf' df ef  r df r bf | d, f a b r a r f } ||
}
melodySaxIntro = \relative c' { 
    \repeat percent 2 { 
        <<
            \relative c' {  
                r8 ef4 ( df8 ) ef ( df ) ef ( df ) | r8 e?4 ( d?8 ) e ( d ) e ( d ) |
            } \\
            \relative c' {
                r8 bf4 ( af8 ) bf ( af ) bf ( af ) | r8 b4 ( a?8 ) b ( a ) b ( a ) |
            }
        >>
    } 
    <<
        \relative c' {  
            r8 e4. \glissando b!4.
        } \\
        \relative c' {
            r8 b4. \glissando f4.
        }
    >>
}
melodyACommon = \relative c' { 
    a8 
    \tuplet 3/2 { bf?8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a4. ~ 4. ) a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | a2. r8 a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a2.. ) |  
}
melodyACommonRepeat = \relative c' { 
    a8 
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a4. ~ 4. ) a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | a2. r8 a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a2.. ) |  
}
melodyALastBird = \relative c' { 
    a8 
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a4. ~ 4. ) a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 cs ~ | 8 a4. r4 r8 a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a2.. ) |  
}
melodyBParker = \relative c'' { 
    a4 || c2 a4. g8 | fs4 ef'8 ( d ~ 4 ) c8 a | bf8 g4 fs8 ~ 8 g a g ~ | 2 r4 r8 bf8 | 
    r8 bf4. g4. f8 | e4 df'8 ( c ~ 4 ) \tuplet 3/2 { bf16 ( c bf } gs8 ) | a4. f8 g4 f8 e ~ | 2. r8 
}
melodyBDizzy = \relative c'' { 
    a4 || c2 a4. g8 | fs4 ef'8 cs d8 c4 a8 | 
    bf8 g4 fs8 ~ 4 a8 fs | g a e2 r8 bf'8 | 
    
    r8 bf4. g4. f8 | e4 df'8 b c bf4 gs8 | 
    a4. f8 \tuplet 3/2 { g16 ( af g } f8 ) \tuplet 3/2 { g16 ( af g } f8 ) | e2. r8 
}
melodyBreakDizzy = \relative c'' {
    a8 r a r a ~ | 4 g8 e a4 g8 e | a g e a r4 r8 
    a ~ | 4 f8 df a'4 f8 df | a' f df a' r4 r8 
    a ~ | 4 f8 d a'4 f8 d | a' f d a' 
            \relative c'' { 
                r4 r8 a ~ | 4 f8 df a'4 f8 df | a' f df a' 
            } 
        r4 r8 
    a ~ | 4 fs8 d a'4 fs8 d | a' f d a' r4 r8 
    a ~ | 4 ff8 df a'4 ff8 df | a' ff df a' r4 
        <<
            \relative c'' { c8^"To End: Fine" f } \\
            \relative c'' { a8_"To Solos: D.S." c } 
        >> || 
    \comp #16
}
melodyBreakBird = \relative c'' {
    a8 r a r a ~ | 4 g8 e a4 g8 e | a g e a r4 r8 
    a ~ | 4 f8 df a'4 f8 df | a' f df a' r4 r8 
    a ~ | 4 f8 d a'4 f8 d | a' f d a' \relative c'' {
                r8 a8 r c ~ | 4. a16 ( g ) a4 4 ~ | 2 
            } 
        r4 r8 
    a ~ | 4 fs8 d a'4 fs8 d | a' f d a' r4 r8 
    a ~ | 4 ff8 df a'4 ff8 df | a' ff df a' r4 
        <<
            \relative c'' { c8^"To End: Fine" f } \\
            \relative c'' { a8_"To Solos: D.S." c } 
        >> || 
}

melodySoloInBb = \relative c' {
    r4 fs16 g b d  fs e ds e  g fs e ef | 
    d16 \set stemRightBeamCount = #1 b 
        \set stemLeftBeamCount = #1 \tuplet 3/2 { c16 d c }  b16 g e d  a' g fs e  ds e g ef |
    d16 c b d ~  16 e a fs  g a b c  d \set stemRightBeamCount = #1 as
        \set stemLeftBeamCount = #1
        \tuplet 3/2 { b16 d fs } |
    \tuplet 3/2 { gs16 a \set stemRightBeamCount = #1 gs } 
        \set stemLeftBeamCount = #1
        fs16 e  ds fs, a b  c b a g  fs e d c ||

    f4 r4 r8 ef'8 d16 ef d c | e8 b r4 r8 c r d | 
    ef8 f  \tuplet 3/2 { d8 ef c } r4 r8 d16 c | b8 g fs e  a g fs e | 
    b8 c ef g d'c r4 | b2 r2 | 
    r4 c16 b a g  fs e ds e  fs ds e fs | b,4 r r2 ||

    c'8 d ef f  r ef r fs ~ | \noBreak 16 g gs a  cs,2 r4 | 
    r4 a'16 af g gf  f b, c d  ef c b a | \tuplet 3/2 { g8 fs? e } ds16 e fs ds e b8. r4 |
    r8 bf \tuplet 3/2 { c8 ef g } \tuplet 3/2 { d'8 c d ~ } 4 ~ | \noBreak 4 c16 d c b  c8 b  a16 b a g |
    fs8 e ds fs  c' b f ds | e fs g a b c b16 c b a ||
    gs8 fs r4 r2 || 
}
melodySolo = \transpose c bf, \melodySoloInBb

melodySongBird = \relative c'' { 
    \melodyBassIntro
    \melodySaxIntro
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 2 r4 r8 a8 }
    \relative c' { d2. \repeatTie }
    \melodyBParker
    \melodyALastBird
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 4. }
    \melodyBreakBird
    \melodySolo
}
melodySongBirdForBbMinor = \relative c'' { 
    \transpose c' c \melodyBassIntro
    \melodySaxIntro
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 2 r4 r8 a8 }
    \relative c' { d2. \repeatTie }
    \melodyBParker
    \melodyALastBird
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 4. }
    \melodyBreakBird
    \melodySolo
}
melodySongDiz = \relative c'' { 
    \melodyBassIntro
    \melodySaxIntro
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 2 r4 r8 a8 }
    \relative c' { d2. \repeatTie }
    \melodyBDizzy
    \melodyACommonRepeat
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 4. }
    \melodyBreakDizzy
}
melodyExercise = \relative c''' { 
    b1 s1*3 
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "Dizzy-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(Dizzy)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureDizzy
                    {
                        \clef bass
                        s1*4
                        \clef treble
                    }
                    \melodySongDiz
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bird-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(Bird & Dexter)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    {
                        \clef bass
                        s1*4
                        \clef treble
                    }
                    \melodySongBird
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bird-transposed-to-Bb-minor"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(Transposed to Bb-)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose d bf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose d bf { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    {
                        \clef bass
                        s1*4
                        \clef treble
                    }
                    \melodySongBirdForBbMinor
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bird-transposed-to-Bb-minor-for-Bb"
    \header {
        poet = "    For Bb"
        subtitle = "(Transposed to Bb-)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c bf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose c bf { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    {
                        \clef bass
                        s1*4
                        \clef treble
                    }
                    \melodySongBirdForBbMinor
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "Bird-transposed-to-Bb-minor-for-Eb"
    \header {
        poet = "    For Eb"
        subtitle = "(Transposed to Bb-)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose f bf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose f bf { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    {
                        \clef bass
                        s1*4
                        \clef treble
                    }
                    \melodySongBirdForBbMinor
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "Dizzy-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(Dizzy)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureDizzy
                    \melodySongDiz
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bird-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(Bird & Dexter)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    \melodySongBird
                >>
            }
        >>
    }
}



\book {
  \bookOutputSuffix "Dizzy-for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        subtitle = "(Dizzy)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureDizzy
                    \melodySongDiz
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bird-for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        subtitle = "(Bird & Dexter)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong \chordsSolo 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureBird
                    \melodySongBird
                >>
            }
        >>
    }
}



%{}
\book {
  \bookOutputSuffix "worksheet-for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \hideMelody
                    \structure
                    \transpose b, c \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Bb"
    \header {
        poet = "    Bb Soprano Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \transpose b e \melodyExercise
                >>
            }
        >>
    }
}
%}
