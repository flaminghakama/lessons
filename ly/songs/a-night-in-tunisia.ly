\version "2.19.81"

titleLeft = "A Night in"
titleRight = "Tunisia"
title = "A Night in Tunisia"
composerName = "D. Gillespie"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm a-night-in-tunisia*pdf
lilypond ly/songs/a-night-in-tunisia.ly
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-C.pdf a-night-in-tunisia-for-Bb.pdf a-night-in-tunisia-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-C.pdf a-night-in-tunisia-for-Eb.pdf a-night-in-tunisia-for-C-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-Bb.pdf a-night-in-tunisia-for-Eb.pdf a-night-in-tunisia-for-Bb-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-C.pdf a-night-in-tunisia-worksheet-for-C.pdf a-night-in-tunisia-and-worksheet-for-C.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-Bb.pdf a-night-in-tunisia-worksheet-for-Bb.pdf a-night-in-tunisia-and-worksheet-for-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-for-Eb.pdf a-night-in-tunisia-worksheet-for-Eb.pdf a-night-in-tunisia-and-worksheet-for-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-worksheet-for-C.pdf a-night-in-tunisia-worksheet-for-C.pdf a-night-in-tunisia-worksheet-for-C-double.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-worksheet-for-Bb.pdf a-night-in-tunisia-worksheet-for-Bb.pdf a-night-in-tunisia-worksheet-for-Bb-double.pdf
python ~/git/part-format/combine-1Page-1Page.py a-night-in-tunisia-worksheet-for-Eb.pdf a-night-in-tunisia-worksheet-for-Eb.pdf a-night-in-tunisia-worksheet-for-Eb-double.pdf
mv a-night-in-tunisia-for-C.pdf  pdf/songs
mv a-night-in-tunisia-for-Bb.pdf pdf/songs
mv a-night-in-tunisia-for-Eb.pdf pdf/songs
mv a-night-in-tunisia-worksheet-for-C.pdf pdf/songs
mv a-night-in-tunisia-worksheet-for-Bb.pdf pdf/songs
mv a-night-in-tunisia-worksheet-for-Eb.pdf pdf/songs
mv a-night-in-tunisia-for-C-and-Bb.pdf pdf/songs/printable
mv a-night-in-tunisia-for-C-and-Eb.pdf pdf/songs/printable
mv a-night-in-tunisia-for-Bb-and-Eb.pdf pdf/songs/printable
mv a-night-in-tunisia-and-worksheet-for-C.pdf  pdf/songs/printable
mv a-night-in-tunisia-and-worksheet-for-Bb.pdf  pdf/songs/printable
mv a-night-in-tunisia-and-worksheet-for-Eb.pdf  pdf/songs/printable
mv a-night-in-tunisia-worksheet-for-C-double.pdf pdf/songs/printable
mv a-night-in-tunisia-worksheet-for-Bb-double.pdf pdf/songs/printable
mv a-night-in-tunisia-worksheet-for-Eb-double.pdf pdf/songs/printable

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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
        \bar ":|]S[|:"
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
        \bar "[|:"
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
    s1*4
    \bar "|."
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

melodyBassIntro = \relative c' { 
    bf8 || \repeat percent 2 {  ef, bf' df ef  r df r bf | d, f a b r a r bf } ||
}
melodySaxIntro = \relative c' { 
    \repeat percent 2 {  
        r8 ef4 ( df8 ) ef ( df ) ef ( df ) | r8 e?4 ( d?8 ) e ( d ) e ( d ) |
    } 
        r8 ef4. \glissando bf4.
}
melodyACommon = \relative c' { 
    a8 
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | gs8 ( a4. ~ 4. ) a,8 |  
    \tuplet 3/2 { bf8 ( df ) f } c'2 bf8 ( f ) | a2. r8 a,8 |  
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
            \relative c'' { c8^"To End" f } \\
            \relative c'' { a8_"To Solos" c } 
        >> || 
    \comp #16
}
melodyBreakBird = \relative c'' {
    a8 r a r a ~ | 4 g8 e a4 g8 e | a g e a r4 r8 
    a ~ | 4 f8 df a'4 f8 df | a' f df a' r4 r8 
    a ~ | 4 f8 d a'4 f8 d | a' f d a' \relative c'' {
                r8 a8 r df ~ | 4. a16 ( f ) a4 4 ~ | 2 
            } 
        r4 r8 
    a ~ | 4 fs8 d a'4 fs8 d | a' f d a' r4 r8 
    a ~ | 4 ff8 df a'4 ff8 df | a' ff df a' r4 
        <<
            \relative c'' { c8^"To End" f } \\
            \relative c'' { a8_"To Solos" c } 
        >> || 
    \comp #16
}
melodySongBird = \relative c'' { 
    \melodyBassIntro
    \melodySaxIntro
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 2 r4 r8 a8 }
    \relative c' { d2. \repeatTie }
    \melodyBParker
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 4. }
    \melodyBreakBird
}
melodySongDiz = \relative c'' { 
    \melodyBassIntro
    \melodySaxIntro
    \melodyACommon
    \relative c'' { a8 bf a g  ef4 cs8 d ~ | 2 r4 r8 a8 }
    \relative c' { d2. \repeatTie }
    \melodyBDizzy
    \melodyACommon
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
            \new ChordNames \transpose c c  { \chordsSong }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
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
            \new ChordNames \transpose c c  { \chordsSong }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySongBird
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
            \new ChordNames \transpose bf c  { \chordsSong }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
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
            \new ChordNames \transpose bf c  { \chordsSong }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
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
            \new ChordNames \transpose ef c  { \chordsSong }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
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
            \new ChordNames \transpose ef c  { \chordsSong }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
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
            \new ChordNames \transpose c c  { \chordsForm }
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
            \new ChordNames \transpose bf c  { \chordsForm }
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
            \new ChordNames \transpose ef c  { \chordsForm }
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
