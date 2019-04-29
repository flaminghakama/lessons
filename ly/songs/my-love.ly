\version "2.19.81"

titleLeft = "My"
titleRight = "Love"
title = "My Love"
composerNameFirstPage = "P. Nylen, J. Elofsson, D. B. Kreuger & P. O. Magnusson"
composerName = "Nylen/Elofsson/Kreuger/Magnusson"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"

\header {
    composer = \composerNameFirstPage
}

%{
rm my-love*; 
lilypond ly/songs/my-love.ly 
~/git/part-format/combine-3page-3page.sh my-love-for-C.pdf my-love-for-Eb.pdf my-love-for-C-and-Eb.pdf
mv my-love-sound.midi midi/songs
mv my-love-for-C.pdf pdf/songs;
mv my-love-for-Eb.pdf pdf/songs;
mv my-love-for-C-and-Eb.pdf pdf/songs/printable;
op pdf/songs/printable/my-love-for-C-and-Eb.pdf
%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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


structure = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -0.4 . 0.1 )
    \key a \major
    \numericTimeSignature
    \time 2/2
    \tempo 2=72
    s1*5
    \startSection "Verse 1"
    s1*8 \bar "||" s1*8 
    \startSection "Pre-chorus 1"
    s1*8
    \startSection "Chorus 1"
    s1*8 \bar "||" s1*9 \pageBreak
    s1*1
    \startSection "Verse 2"
    s1*8 \bar "||" s1*8  
    \startSection "Pre-chorus 2"
    s1*8
    \startSection "Chorus 2"
    s1*8 \bar "||" s1*8 
    \startSection "Bridge"
    s1*7 \pageBreak  
    s1*1  
    \startSection "Pre-chorus 3"
    s1*8
    \key b \major
    \startSection "Chorus 3"
    s1*8 \bar "||" s1*8
    \startSection "Coda"
    s1*8 \bar "||" s1*10
    \bar "|."
}

chordsIntro = \chordmode { 
    d2 a | e1 | d | a | s1
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
chordsChorusCommon = \chordmode { 
    d1 | a | d | a | 
    d1 | a | e:sus | e | 
    d1 | a | d | a | 
    d1 | a | e:sus |
}
chordsChorusEnd = \chordmode { 
    e1 | a| s |  
}
chordsBridge = \chordmode { 
    cs1:m | 
    fs1:m | b:m | e | cs:m | 
    fs1:m | b | e:sus | e | 
}
chordsPreChorusThree = \chordmode { 
    a1 | e | cs:m | fs:m | 
    b1:m | d | e | s | 
}
chordsChorusThree = \chordmode { 
    e1 | b | e | b | 
    e1 | b | fs:sus | fs | 
    e1 | b | e | b | 
    e1 | b | fs:sus | fs |
}
chordsCoda = \chordmode { 
    \chordsChorusThree
    b1 | s 
}

chordsHead = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsPreChorus
    \chordsChorusCommon
    \chordsChorusEnd

    \chordsVerse
    \chordsPreChorus
    \chordsChorusCommon
    \chordsBridge
    \chordsPreChorusThree
    \chordsChorusThree
    \chordsCoda
}

accompanimentIntroInC = \relative c'' { 
    f8 a, d f  c4 a | b2. c8 b | a2 4 b | c1 |
} 
accompanimentPreChorusThree = \relative c'' { 
    fs4 gs ||
    a4 8 8 ~ 4. 8 | 16 ( b8. ) 8 8 ~ 2 | gs4 8 8 ~ 8 a ~ 8 [ \grace { gs8 ( } a8 ~ ] | 2 )  
}


melodyIntro = \relative c'' { 
    R1*4 
} 
melodyVerseOne = \relative c' { 
    r2 r4 r8 e8 ||
    a4 8 8 ~ 4.  e8 | b'4 8 8 ~ 4. 8 | gs4 8 8 ~ 8 a4 8 ~ | \noBreak 2 r4 r8 d,8 | 
    fs4 8 8 ~ 4 r8 e8 | fs4 4 8 4 8 ~ | \noBreak 8 e4. r2 | r2 r4 r8 e8 |

    a4 8 8 ~ 4. e8 | b'4 8 8 ~ 4. d8 | e4 8 8 ~ 8 cs4 a8 ~ | \noBreak 2 r4 r8 e8 | 
    fs4 8 8 ~ 4. 8 | 4 8 a8 ~ 4 8 fs8 ~ | \noBreak 8 e4. r8 fs4 8 (  ~ | \noBreak 8 e4. ) 
}
melodyPreChorusOne = \relative c' { 
    r4 fs || \break
    d'2 fs, | gs r4 r8 gs8 | a4 8 8 ~ 4 cs8 b8 ~ | \noBreak 8 a4. r2 | 
    d4 8 8 ~ 4 8 8 ~ | \noBreak 4 cs8 a ~ 8 b4. | 1 | r2 
}
melodyChorusCommon = \relative c'' { 
    a4 gs ||
    fs4 e8 8 ~ 8 4 8 ~ | \noBreak 4 r8 e8 a4 gs | fs4 e8 8 ~ 8 d4 cs8 ~ | \noBreak 4 r4 cs' e | 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 cs8 b ~ | \noBreak b2 fs4 gs ~ | \noBreak 4 r a gs | 

    fs4 e8 8 ~ 4 8  8 ~ | \noBreak 4 r8 e8 a4 gs8 fs ~ | \noBreak 4 e8 e'8 ~ 4 d8 cs ~ | \noBreak 4 r4 cs e8 d ~ | \noBreak 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 
}
melodyChorusOneOut = \relative c'' {
    cs8 b ~ | \noBreak 1 | r2 gs4 a ~ | \noBreak 1 | r2
}
melodyVerseTwo = \relative c' { 
    r4 r8 e8 ||
    a4 8 8 ~ 4.  e8 | b'4 8 8 ~ 4. e,8 | gs4 4 8 a4 8 ( ~ | \noBreak 8 gs fs4 ) r4 r8 d8 | 
    fs4 4 4 r8 fs8 | fs4 8 a ~ 8 gs4 fs8 ~ | \noBreak 8 e4. r8 fs4 8 ( ~ | \noBreak 8 e4. ) r4 r8 e8 |

    a4 8 8 ~ 4 r8 e8 | b'4 8 8 ~ 4. d8 | e4 8 8 ~ 8 cs4 a8 ~ | \noBreak 2 r4 r8 e8 | 
    fs4 8 8 ~ 4 r8 fs8 | 4 8 a ~ 4 cs8 8 ~ | \noBreak 8 b4. r8 gs4. | gs16 ( fs e8 ~ 4 )   
}
melodyPreChorusTwo = \relative c' { 
    r4 fs ||
    d'2 fs, | gs4 ( fs8 e ~ 4 ) r8 gs8 | a4 8 e'8 ~ 4 cs8 b8 ~ | \noBreak 8 a4. r2 | 
    d4 8 8 ~ 4 8 e8 ~ | \noBreak 4 cs8 d ~ 4 cs8 8 ( ~ | \noBreak \noBreak 8 d16 cs b2. ~ | 4 ) r 
}
melodyChorusTwo = \relative c'' { 
    a4 gs ||
    fs4 e8 8 ~ 8 4 8 ~ | \noBreak 4 r8 e8 a4 gs | fs4 e8 8 ~ 8 d4 cs8 ~ | \noBreak 4 r4 cs' e | 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 cs8 b16 ( cs | \noBreak b2 ) fs4 gs ~ | \noBreak 4 r a gs | 

    fs4 e8 8 ~ 4 8  8 ~ | \noBreak 4 r8 e8 a4 gs8 fs ~ | \noBreak 4 e8 e'8 ( ~ 8 d8 ) 8 cs ~ | \noBreak 4 r4 cs e8 d ~ | \noBreak 
    d4 cs8 b ~ 4. 8 | cs4 b8 a ~ 4 
    cs8 b ~ | \noBreak 2 ~ 
} 
melodyBridge = \relative c'' {
    b4 r8 a8 | cs4 b8 a ~ 4 gs8 a ~ || \noBreak 
    a2. r8 a8 | b4 a8 gs ~ 8 fs4 gs8 ( ~ | \noBreak 8 fs e4 ) r r8 a8 | cs4 b8 a ~ 4 gs8 b ( ~ | \noBreak 
    16 cs b8 a4 ~ 4 ) r8 e8 | fs4 8 8 ~ 4 e8 8 ~ | \noBreak 1 ~ | 2   
}
melodyPreChorusThreeFirstHalf = \relative c'' { 
    r2 ||
    R1*3 | r2 
}
melodyPreChorusThreeSecondHalf = \relative c'' { 
    r4 r8 a8 |
    d4 8 8 ~ 4 8 8 ( | \noBreak cs4 ) 8 a ~ 8 b4. | 1 ~ | 2 
}
melodyChorusThree = \relative c'' { 
    b4 as ||
    gs4 fs8 8 ~ 8 4 8 ~ | \noBreak 4 r8 fs8 b4 as | gs4 fs8 8 ~ 8 e4 ds8 ~ | \noBreak 4 r4 ds' fs | 
    e4 ds8 cs ~ 4. 8 | ds4 cs8 b ~ 4 ds8 cs16 ( ds | \noBreak cs2 ) gs4 as ~ | \noBreak 4 r b as | 

    gs4 fs8 8 ~ 4 8 8 ~ | \noBreak 4 r8 fs8 b4 as8 gs ~ | 4 fs8 fs'8 ( ~ 16 gs fs8 ) e ds ~ | \noBreak 4 r4 ds fs8 e ~ | 
    e4 ds8 cs ~ 4. 8 | ds4 cs8 b ~ 4 ds8 cs ~ | 1 ~ | 4 r  
}
melodyCoda = \relative c'' { 
    r2 | 
    e4 8 8 ~ 8 4 ds8 ( ~ | \noBreak 8 cs b4 ) r2 | 
    e4 8 8 ~ 8 gs4 8 ( ~ | \noBreak 8 e4. ) ds4 fs |
    e4 ds8 cs ~ 4 r | ds4 cs8 b ~ 4 ds8 cs ~ | \noBreak 1 ~ | \noBreak 2    

    b4 as | 
    gs4 fs8 8 ~ 4 8 8 ~ | \noBreak \noBreak 4 r8 fs8 b4 as8 gs ~ | \noBreak 4 fs8 fs'8 ( ~ 16 gs fs8 ) e ds ~ | \noBreak \noBreak 4 r4 ds fs8 e ~ | \noBreak 
    e4 ds8 cs ~ 4. 8 | ds4 cs8 b ~ 4 ds8 cs ~ | \noBreak 1 ~ | \noBreak 4 r as4 b ~ | \noBreak 1 ~ | \noBreak 2 r 
}


melodyHeadForC = \relative c' { 
    << \new CueVoice \transpose ef c \accompanimentIntroInC \\ \melodyIntro >>
    \melodyVerseOne
    \melodyPreChorusOne
    \melodyChorusCommon
    \melodyChorusOneOut
    \melodyVerseTwo
    \melodyPreChorusTwo
    \melodyChorusTwo
    \melodyBridge
    << \new CueVoice \transpose ef ef, \accompanimentPreChorusThree \\ \melodyPreChorusThreeFirstHalf >>
    \melodyPreChorusThreeSecondHalf
    \melodyChorusThree
    \melodyCoda
}

melodyForMidi = \relative c' { 
    \melodyIntro
    \melodyVerseOne
    \melodyPreChorusOne
    \melodyChorusCommon
    \melodyChorusOneOut
    \melodyVerseTwo
    \melodyPreChorusTwo
    \melodyChorusTwo
    \melodyBridge
    \melodyPreChorusThreeFirstHalf
    \melodyPreChorusThreeSecondHalf
    \melodyChorusThree
    \melodyCoda
}

accompanimentForMidi = \relative c' { 
    \transpose ef c \accompanimentIntroInC
    s1*16 
    % "Pre-chorus 1"
    s1*8
    % "Chorus 1"
    s1*8 s1*9
    s1*1
    % "Verse 2"
    s1*8 s1*8  
    % "Pre-chorus 2"
    s1*8
    % "Chorus 2"
    s1*8 s1*8 
    % "Bridge"
    s1*7  
    s1*1  s2
    % "Pre-chorus 3"
    \transpose ef ef, \accompanimentPreChorusThree 
    s2 | s1*4 
    % "Chorus 3"
    s1*8 s1*8
    % "Coda"
    s1*8 s1*10
}

melodyHead = \relative c' { 
    << \new CueVoice \transpose ef, c \accompanimentIntroInC \\ \melodyIntro >>
    \melodyVerseOne
    \melodyPreChorusOne
    \melodyChorusCommon
    \melodyChorusOneOut
    \melodyVerseTwo
    \melodyPreChorusTwo
    \melodyChorusTwo
    \melodyBridge
    << \new CueVoice \accompanimentPreChorusThree \\ \melodyPreChorusThreeFirstHalf >>
    \melodyPreChorusThreeSecondHalf
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
    To find the place I love the most
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
    To pro -- mise you my love
    To tell you from my heart
    You're all I'm think -- ing of


    And reach -- ing for the love that seems so far

    so I say a lit -- tle prayer
    And hope my dreams will take me there
    Where the skies are blue
    To see you once a -- gain, my love

    O -- ver seas from coast to coast
    To find the place I love the most
    Where the fields are green
    To see you once a -- gain

    See you in a prayer
    Dreams will take me there
    Where the skies are blue
    See you once a -- gain
    
    O -- ver seas from coast to coast
    To find the place I love the most
    Where the fields are green
    To see you once a -- gain, my love
}


\book {
    \bookOutputSuffix "for-C"

    \header {
        title = \title
        composer = \composerName
        poet = "Concert Pitch"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c ef { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c ef <<
                        \autoPageBreaksOff
                        \structure
                        \melodyHeadForC
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .5\cm
        }
    }
}

\book {
    \bookOutputSuffix "sound"
    \score {
        <<
            \new ChordNames \transpose c ef { \chordsHead }
            \new Staff = "guitar" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c ef, <<
                        \accompanimentForMidi
                    >>
                }
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c ef, <<
                        \melodyForMidi
                    >>
                }
            }
        >>
        \midi {}
    }
}

\book {
    \bookOutputSuffix "for-Eb"

    \header {
        title = \title
        composer = \composerName
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose ef ef { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose ef ef <<
                        \autoPageBreaksOff
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
        \layout { 
            indent = 1.25\cm
            short-indent = .5\cm
        }
    }
}

