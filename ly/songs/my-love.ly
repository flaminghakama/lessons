\version "2.19.81"

titleLeft = "My"
titleRight = "Love"
title = "My Love"
composerName = "Westlake"

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
    \key a \major
    s1*5
    \startSection "Verse 1"
    s1*8 \bar "||" s1*8 
    \startSection "Pre-chorus 1"
    s1*8
    \startSection "Chorus 1"
    s1*18
    \startSection "Verse 2"
    s1*8 \bar "||" s1*8  
    \startSection "Pre-chorus 2"
    s1*8
    \startSection "Chorus 2"
    s1*8 \bar "||" s1*8 
    \startSection "Bridge"


}

chordsIntro = \chordmode { 
    s1*5
}
chordsVerseForm = \chordmode { 
    a1 | e | cs:m | fs:m | 
    d1 | s | e:sus | e |     
}
chordsVerse = \chordmode { 
    \chordsVerseForm
    \chordsVerseForm
}
chordsPreChorus = \chordmode { 
    b1:m | e | a | d | 
    b1:m | d | e | s | 
}
chordsChorus = \chordmode { 
    d1 | a | d | a | 
    d1 | a | e:sus | e | 
    d1 | a | d | a | 
    d1 | a | e:sus | e |
    a1 | s |  
}
chordsPostChorus = \chordmode { 
}
chordsCoda = \chordmode { 
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsPreChorus
    \chordsChorus
    \chordsVerse
    \chordsPreChorus
    \chordsChorus
    \chordsBridge
    \chordsPreChorus
    \chordsChorus
    \chordsCoda
}

melodyIntro = \relative c'' { 
    R1*4 | r2
} 
melodyVerseOne = \relative c' { 
    r4 r8 e8 ||
    a4 8 8 ~ 4.  e8 | b'4 8 8 ~ 4. 8 | gs4 8 8 ~ 8 a4 8 ~ | 2 r4 r8 d,8 | 
    fs4 8 8 ~ 4 r8 e8 | fs4 4 8 4 8 ~ | 8 e4. r2 | r2 r4 r8 e8 |

    a4 8 8 ~ 4. e8 | b'4 8 8 ~ 4. d8 | e4 8 8 ~ 8 cs4 a8 ~ | 2 r4 r8 e8 | 
    fs4 8 8 ~ 4. 8 | 4 8 a8 ~ 4 8 fs8 ~ | 8 e4. r8 fs4 8 (  ~ | 8 e4. ) 
}
melodyPreChorusOne = \relative c' { 
    r4 fs || \break
    d'2 fs, | gs r4 r8 gs8 | a4 8 8 ~ 4 cs8 b8 ~ | 8 a4. r2 | 
    d4 8 8 ~ 4 8 8 ~ | 4 cs8 a ~ 8 b4. | 1 | r2 
}
melodyChorusCommon = \relative c'' { 
    a4 gs ||
    fs4 e8 8 ~ 8 4 8 ~ | 4 r8 e8 a4 gs | fs4 e8 8 ~ 8 d4 cs8 ~ | 4 r4 cs' e | 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 cs8 b ~ | 2 fs4 gs ~ | 4 r a gs | 

    fs4 e8 8 ~ 4 8  8 ~ | 4 r a gs8 fs ~ | 4 e8 e'8 ~ 4 d8 cs ~ | 4 r4 cs e8 d ~ | 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 
}
melodyChorusOneOut = \relative c'' {
    cs8 b ~ | 1 | r2 gs4 a ~ | 1 | r2
}
melodyVerseTwo = \relative c' { 
    r4 r8 e8 ||
    a4 8 8 ~ 4.  e8 | b'4 8 8 ~ 4. 8 | gs4 4 8 a4 8 ( ~ | 8 gs fs4 ) r4 r8 d8 | 
    fs4 4 4 r8 fs8 | fs4 8 a ~ 8 gs4 fs8 ~ | 8 e4. r8 fs4 8 ( ~ | 8 e4. ) r4 r8 e8 |

    a4 8 8 ~ 4 r8 e8 | b'4 8 8 ~ 4. d8 | e4 8 8 ~ 8 cs4 a8 ~ | 2 r4 r8 e8 | 
    fs4 8 8 ~ 4 r8 fs8 | 4 8 a ~ 4 cs8 8 ~ | 8 b4. r8 gs4. | gs8 ( fs e4 )   
}
melodyPreChorusTwo = \relative c' { 
    r4 fs ||
    d'2 fs, | gs r4 r8 gs8 | a4 8 e'8 ~ 4 cs8 b8 ~ | 8 a4. r2 | 
    d4 8 8 ~ 4 8 e8 ~ | 4 cs8 d ~ 4 cs8 8 ~ | 4 b2. | r2 
}
melodyChorusTwoOut = \relative c'' {
    cs8 b ~ | 2 
} 
melodyBridge = \relative c'' {
    r4 r8 a8 | cs4 b8 a ~ 4 gs8 a ~ ||
    a2. r8 a8 | b4 a8 gs ~ 8 fs4 gs8 ~ | 8 fs e4 r r8 a8 | cs4 b8 a ~ 4 gs8 b ~ | 
    4 a r2 | fs4 8 8 ~ 4 e8 8 ~ | 1 ~ | 1 |  
}
melodyPreChorusThree = \relative c'' { 
    R1*4 | 
    d4 8 8 ~ 4 8 8 ~ | 4 cs8 a ~ 8 b4. | 1 ~ | 2 
}
melodyChorusThree = \relative c'' { 
    b4 as ||
    gs4 fs8 8 ~ 8 4 8 ~ | 4 r b as | gs4 fs8 8 ~ 8 4 8 ~ | 4 r4 ds' fs | 
    e4 ds8 cs ~ 4. 8. | ds4 cs8 b ~ 4 ds8 cs ~ | 2 gs4 as ~ | 4 r b as | 

    gs4 fs8 8 ~ 8 4 8 ~ | 4 r b as | gs4 fs8 fs'8 ~ 8 e ds8 ~ | 4 r4 ds fs | 
    e4 ds8 cs ~ 4. 8. | ds4 cs8 b ~ 4 
}
melodyCoda = \relative c' { 
}


melodyHead = \relative c' { 
    \melodyIntro
    \melodyVerseOne
    \melodyPreChorusOne
    \melodyChorusCommon
    \melodyChorusOneOut
    \melodyVerseTwo
    \melodyPreChorusTwo
    \melodyChorusCommon 
    \melodyChorusTwoOut
    \melodyBridge
    \melodyPreChorusThree
    \melodyChorusThree
    \melodyCoda
}

lyricsHead = \lyricmode {

    An emp -- ty street
    An emp -- ty house
    A hole in -- side my heart

    I'm all a -- lone
    The rooms are get -- ting smal -- ler
    
    I won -- der how
    I won -- der why
    I won -- der where they are
    
    The days we had
    The songs we sang to -- ge -- ther
    
    Oh yeah
    
    And all my love
    I'm hol -- ding on for -- ev -- er
    Reach -- ing for the love that seems so far

    So I say a lit -- tle prayer
    And hope my dreams will take me there
    Where the skies are blue
    To see you once a -- gain, my love
    
    O -- ver seas from coast to coast
    Find the place I love the most
    Where the fields are green
    To see you once a -- gain, my love


    I tried to read
    I go to work
    I'm laugh -- ing with my friends
    But I can't stop
    To keep my -- self from think -- ing
    Oh no

    I won -- der how
    I won -- der why
    I won -- der where they are
    The days we had
    The songs we sang to -- ge -- ther
    Oh yeah
    And all my love
    I'm hol -- ding on for -- ev -- er
    Reach -- ing for the love that seems so far
    So I say a lit -- tle prayer
    And hope my dreams will take me there
    Where the skies are blue
    To see you once a -- gain, my love
    O -- ver seas from coast to coast
    To find the place I love the most
    Where the fields are green
    To see you once a -- gain
    To hold you in my arms
    To promise you my love
    To tell you from my heart
    You're all I'm thinking of
    And reaching for the love that seems so far
    so I say a lit -- tle prayer
    And hope my dreams will take me there
    Where the skies are blue
    To see you once a -- gain, my love
    O -- ver seas from coast to coast
    To find the place I love the most
    Where the fields are green
    To see you once a -- gain, my love
    See you in a prayer
    My sweet dreams will take me there
    Where the skies are blue
    To see you once a -- gain
    O -- ver seas from coast to coast
    To find the place I love the most
    Where the fields are green
    To see you once a -- gain, my love


}

%{

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
%}

\book {
    \bookOutputSuffix "for-Eb"

    \header {
        title = \title
        composer = \composerName
        poet = "Eb Alto Saxophone"
    }

    \score {
        <<
            \new ChordNames \transpose ef ef { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose ef ef <<
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

