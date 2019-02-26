\version "2.19.81"

titleLeft = "Photograph"
titleRight = ""
title = "Photograph"
composerName = "E. Sheeran"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \key e \major
    s1*8 \bar "||"
    \mark \markup \box "Verse 1"
    s1*16 \bar "||"
    \mark \markup \box "Pre-Chorus"
    s1*8 \bar "||"
    \mark \markup \box "Chorus"
    s1*8 
    s1*2 \bar "||"
    \mark \markup \box "Verse 2"
    s1*16 \bar "||"
    \mark \markup \box "Pre-Chorus"
    s1*8 \bar "||"
    \mark \markup \box "Chorus 2"
    s1*8 \bar "||"
    \mark \markup \box "Chorus 3"
    s1*8 \bar "||"

    s1*8 \bar "||"
    s1*16 \bar "||"
    s1*10 \bar "|."
}

chordsVerse = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    e1 | s | cs:m | s | 
    b1 | s | a | s ||
}
chordsPreChorus = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    cs1:m | a | e | b | 
    cs1:m | a | e | b ||
}
chordsChorus = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    e1 | s | b | s | 
    cs1:m | s | a | s | 
}
chordsPostChorus = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    e1 | s | 
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    cs1:m | s |  a | s |
    e | s | b | s ||
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    \chordsVerse
    \chordsVerse
    \chordsVerse

    \chordsPreChorus
    \chordsChorus
    \chordsPostChorus

    \chordsVerse
    \chordsVerse
    \chordsPreChorus
    \chordsChorus
    \chordsChorus

    \chordsCoda
    \chordsChorus
    \chordsChorus
    \chordsChorus

    s1 | e1 ||
}

melodyVerseOne = \relative c'' { 
    r2 gs8 8 fs gs ||
    R1 | r2 gs8 8 fs gs ( ~ | 16 fs e8 ) 8 8 ~ 4 r | r2 e8 8 fs ds ~ | 
    4 8 e ~ 4 a8 gs ~ | 8. e16 ~ 2. | R1 | r4 r8 e8 gs8 8 fs gs ~ ( | 
    4. fs8 ~ 4. e8 ) | r4 e8 8 gs8 8 fs gs ( | fs4 ) e8 8 ~ 4 r | r2 e8 8 fs ds ~ | 
    4 8 e8 ~ 8 b4 a'8 ~ | 8 gs4 fs8 ~ 16 e e ( fs gs4 ~ | 8. fs16 e2. ) | R1 |  
}
melodyPreChorus = \relative c' { 
    r8 e8 8 [ 8 ]  8 8 8 fs ~ | 16 gs16 8 r4 r2 | 
    r8 e8 8 [ 8 ]  8 8 8 fs | gs8 4 ( fs8 ~ 4 ) e16 fs8. | 
    b8. gs16 16 fs8 16 ~ 16 e8. r4 | b'8. gs16 16 fs8 16 ~ 16 e8. ~ 8 8 | 
    b'8. gs16 16 fs8 16 ~ 8 e e ds | 
}
melodyChorusOne = \relative c'' { 
    r2 r8 e8 8 [ fs ] ||
    gs2 b, | gs'8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 4 a8 ~ 8 gs fs16 e16 8 ~ |
    1 | e8 4 ds8 ~ 16 e16 8 ~ 8 8 |  
}
melodyPostChorus = \relative c'' { 
    R1 
}
melodyVerseTwo = \relative c'' { 
    r2 gs8 8 fs gs ~ ||
    1 | r2 gs8 8 fs gs ( ~ | 16 fs ) e8  8 8 ~ 4 r | r2 e8 8 fs ds ~ | 
    4 8 e ~ 4 a8 gs | 4 e ~ 8 8 r4 | R1 | r4 e8 8 gs8 8 fs gs ~ | 
    4 fs8 gs ~ 4.  e8 | e8 8 8 8  gs8 8 fs gs ~ | 16 fs e8 r4 r4 r8 e8 ( ~ | 8 fs ) r4 e8 8 fs ds ~ |
    4 8 e8 ~ 8 b8 4 | a'8 gs8 ~ 8 fs16 e  e8. ( fs16 gs4 ~ | 8. fs16 e2. ) | r4 r8 ds8 ~ ( 8 e4. ) ||  
}
melodyChorusTwo = \relative c'' { 
    r2 r8 e8 8 [ fs ] ||
    gs2 b, | gs'8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 4 a8 ~ 8 gs fs16 e16 8 ( ~ |
    2 ~ 8 fs16 gs ~ 4 ) |  
}
melodyChorusThree = \relative c'' { 
    r2 r8 e8 8 [ fs ] ||
    gs2 b,4 r8. b16 | gs'8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs4. gs8 | gs8 4 a8 ~ 8 gs fs e |
    a1 |  
}
melodyCodaCommon = \relative c'' { 
    e8 4 ds8 8 e4 8 ||
    R1 | e8 4 ds8 8 e4 8 | R1 | fs8 gs4 fs8 ~ 16 16 gs8 ~ 8 8 ( ~ | 
    8. fs16 e4 ) r2 | e8 4 ds8 ~ 16 16 e8 ~ 8 b ~ | 4. e8 ~ ( 4. fs8 ~ | 2 ) r8 e8 8 [ fs ] | 
    gs2 b,8 8 8 8 | gs'8 8 8 a ~ 8 gs fs e | gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 4 a8 ~ 8 gs fs e | e2 ( ~ 8. fs16 gs4 ) | r2 r8 e8 8 [ fs ] | 
    gs2 b,4 r8. b16 | gs'8 8 8 a ~ 8 gs fs e | gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 4 a8 ~ 8 gs fs e | e2. ( fs4 ) | 
}

melodyCoda = \relative c' { 
    r4 r8 e8 8 8 gs8 8 ~ | 
    1 | R1 | gs8 8 8 a ~ 8 gs fs e | gs2 fs | gs8 8 8 a ~ 8 gs fs e | 
    gs2 fs | gs8 8 8 a ~ 8 gs fs e | e1 | e8 4 ds8 e8 4 8 ~ | 1 | 
}
melodyCodaForC = \relative c'' { 
    \melodyCodaCommon
    \melodyCoda
}
melodyCodaForEb = \transpose c c, { 
    \melodyCodaCommon
    \melodyCoda
}

melodyHead = \relative c' { 
    R1*7
    \melodyVerseOne
    \melodyPreChorus
    \melodyChorusOne
    \melodyPostChorus
    \melodyVerseTwo
    \melodyPreChorus
    \melodyChorusTwo
    \melodyChorusThree
    \melodyCodaForC
}
melodyHeadForEb = \relative c' { 
    R1*7
    \melodyVerseOne
    \melodyPreChorus
    \transpose c c, \melodyChorusOne
    \melodyPostChorus
    \melodyVerseTwo
    \melodyPreChorus
    \transpose c c, \melodyChorusTwo
    \transpose c c, \melodyChorusThree
    \melodyCodaForEb
}

lyricsHead = \lyricmode {

}

\book {
    \bookOutputSuffix "for-C"

    \header {
        title = \title
        composer = \composerName
        poet = "Concert Pitch"
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c c <<
                        \structure
                        \melodyHead
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }

}
\book {
    \bookOutputSuffix "for-Eb"

    \header {
        title = \title
        composer = \composerName
        poet = "Eb Alto Saxophone"
    }

    \score {
        <<
            \new ChordNames \transpose ds c { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose ds, c <<
                        \structure
                        \melodyHeadForEb
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }

}
