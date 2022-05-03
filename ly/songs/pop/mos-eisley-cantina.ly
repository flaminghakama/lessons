\version "2.22.1"


titleLeft = "Mos Eisley"
titleRight = "Cantina"
title = "Mos Eisley Cantina"
composerName = "J. Williams"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm mos-eisley-cantina*pdf ; lilypond ly/songs/pop/mos-eisley-cantina.ly ; for file in mos-eisley-cantina*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/mos-eisley-cantina*
lilypond ly/songs/pop/mos-eisley-cantina.ly 
mv mos-eisley-cantina*pdf pdf/songs/pop
for file in pdf/songs/pop/mos-eisley-cantina*pdf ; do op $file ; done 

%}

\paper {

  top-margin = #2
  right-margin = #14
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

    \key f \major
    \tempo "Hot Swing" 4=260
    \time 4/4
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*16
        \break

        \startSection "B"
        s1*16
        \break

        \startSection "C"
        s1*16
        \bar ":|]"
    }
    \pageBreak

    \startSectionNoBarline "D"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \break

    \startSection "E"
    s1*6 \break
    s1*6 \break
    s1*4

    \pageBreak

    \key df \major
    \startSection "F"
    s1*4 \break
    s1*4 \break
    s1*3 \break
    s1*3 
    \break

    \startSection "G"
    s1*14
    \break

    \startSection "H"
    s1*8
    \bar "|."    
}

chordsA = \chordmode { 
    d1:m | s | s | s |
    d1:m | s | a:7.8+9+ | s | 

    d1:m | s | s | s | 
    bf2:7 b:dim7 | d:m7 d:7 | g:7 c:7 | f1 |
}

chordsC = \chordmode { 
    f1:m | s | s | s | 
    f1:m | s | s | s | 
    
    f1:m6 | s2 c:7.9- | f1:m6 | s2 c:7.9- |
    f1:m6 | s2 c:7.9- | f1:m6 | s |
}

chordsD = \chordmode { 
    c1:7 | s | f | s | 
    c1:7 | s | f | s | 
    bf1:maj7 | bf:m7 | f | d:7 | 
    g1:9 | c:7 | f | s | 
}

chordsE = \chordmode { 
    c1:7 | s | f | s | 
    c1:7 | s | f | fs:dim7 | 
    bf1 | b:dim7 | f | d:7 | 
    g1:9 | c:7 | f2 a:7 | d1:m |
}

chordsF = \chordmode { 
    df:1 | s | af:7 | 
    df:1 | s | gf | af:7 | 
    df:1 | s | gf | c | 
    gf2 g:dim7 | bf1:7 | bf:m7 ef:7 |  
}

chordsG = \chordmode { 
    df:1 | s | af:7 | 
    df:1 | s | gf | af:7 | 
    df:1 | s | gf | c | 
    gf:2 g:dim7 | bf:7 | bf:m7 ef:7 |  
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsA
    \chordsA
    \chordsC
    \chordsD
    \chordsE
    \chordsF
}

themeAInEb = \relative c'' { 
    fs4 b fs b | fs8 b4 fs8 ~ 8 es fs4 | fs8 e fs e  r cs e [ ef ] | d4. b8 ~ 4 r | 

    fs'4 b fs b | fs8 b4 fs8 ~ 8 es fs4 | e4 4 ~ 8 ds8 e4 | a8 g r fs r e4. |

    fs4 b fs b  | fs8 b4 fs8 ~ 8 es fs4 | a4 4 ~ 8 fs8 e4 | d4. b8 ~ 4 r | 

    b2 \grace { c16 ( cs } d2 ) \grace { e16 ( es } | fs2 ) \grace { g16 ( gs }  a2 ) | 
    c4 b es,8 fs4 d8 ~ | 2 r |
}

themeBInEb = \relative c'' { 
    r8 fs r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r d ~ | 4. b8 ~ 4 r | 
    r8 fs' r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r e ~ | 4. a,8 ~ 4 r | 
    r8 fs' r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r d ~ | 4. b8 ~ 4 r |
    g8 b d4 gs,8 b d4 | es8 fs r b ~ 4 r | b,8 d fs b es, fs r d ~ | 2 r | 
}

themeCSteelDrumPartOne = \relative c' { 
    r4. g8 ~ 8 f c'4 ~ | 8 f, g4  8 af f4 | 
    f4. af8 ~ 8 f g4 ~ | 8 f af4 g af | 
    f4. af8 ~ 8 f g4 ~ | 8 f af4 g af | 
    f4 af8 f g4 af8 f  | g4 af8 f  g4 af |     
}

themeCSteelDrumPartTwo = \relative c {
    f4. af8 ~ 8 f g4 ~ | 8 f af4 g af | 
    f4. af8 ~ 8 f g4 ~ | 8 f af4 g af | 
    f4. af8 ~ 8 f g4 ~ | 8 f af f  g f af g |  
    f4 af8 f af4. f8 | R1 |
}

themeCTrumpet = \relative c'' { 
    r4 d2. ~ | 2 df4 r | 
    r4 d2. ~ | 2 df4 r | 
    r4 d2. ~ | 2 df4 r | 
    r8 d4. 4. 8 ~ | 4 r r2 |
}

themeD = \relative c' {
    c4. e8 ~ 4 g ~ | 8 4 8 4 e8 c | 
    f4 8 8 ~ 8 g4 a8 ~ | 2. r4 | 
    f4 e8 g ~ 8 4 c,8 ~ | 8 e4 c8 e4 g |
    f4 8 8 ~ 8 g4 a8 ~ | 2. r4 | 

    bf4 8 d ~ 8 bf4 df8 ~ | 8 8 bf4 df bf | 
    f4 8 8 ~ 8 a8 r4 | d1 | 
    r8 a4. g'4 4 | r8 g,4 e'8 ~ 8 4. | 
    r4 a,8 8 ~ 4 8 8 ~ | 8 4 8 ~ 4 4  
}

themeE = \relative c' {
    r8 e r4 d2 | c2 r8 bf'4. | 
    a2 g | f r8 f r4 | 

    r8 e r4 d2 | c2 ~ 8 \glissando bf'4. | 
    a2 g | fs r8 d r4 |

    d8 bf' r4 r8 d4. | d,8 b' r4 r8 d4. | 
    c,8 c' r4 r8 cs,4. | d4-. r r8 d' r4 | 

    f,8 a d, f  bf, d g, bf | e8 f d e c bf f g | 
    a8 c  r4 a8 cs r4 | d4 r r2 
}

themeF = \relative c'' {
    af8 g af g af g af g | af df r af df4-. af8 df | 
    r8 af bf [ b ] c b bf g |
    af8 g af g af g af g | af df r af df4-. af8 a |
    bf8 a bf4 ~ 8 a bf a | bf a bf b c4-. f,8 gf | 

    af8 g af g af g af g | af df r af df4-. af8 a |
    bf8 a bf4 ~ 8 a bf b | c8 g e c r c df [ c ] |
    df4 r8 df e4 r8 e | f e f fs g4 r | 
    af8 g af a bf a bf b |  
}

themeG = \relative c'' {
    c8 8 r4 c8 8 r4 | c8 8 r4 c8 8 r4 | 
    c4 e2 f8 df | %<< { 
        af f ff ef d4-. %} \\ { af8 a bf b c4 } >> 
            r4 |   

    c'8 8 r b c8 8 r b | c c r b c c r4 | 
    df,4 4 ~ 8 bf df bf | df bf df bf af bf r4 | 
    df4 4 ~ 8 bf df bf | df bf df bf af bf r4 | 
    df4 4 ~ 8 bf df bf | df bf df bf af bf r4 | 
    gf?8 g b c f, af b? c | df8 df,8 r df8 4-. r | 
}

melody = { 
    \transpose c ef, {
        \themeAInEb 
        \themeBInEb 
    }
    \transpose c, c \themeCSteelDrumPartOne
    <<
        \themeCTrumpet \\
        \transpose c, c \themeCSteelDrumPartTwo
    >> 
    \themeD
    \themeE
    \themeF
    \themeG
    R1*8
}

melodyInEb = { 
    \themeAInEb 
    \themeBInEb 
    \transpose ef, c \themeCSteelDrumPartOne
    \transpose ef, c <<
        \themeCTrumpet \\
        \themeCSteelDrumPartTwo
    >> 
    \transpose ef, c {
        \themeD
        \themeE
        \themeF
        \themeG
        R1*8
    }
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \transpose c c \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \transpose ef c \structure
                    \melodyInEb
                >>
            }
        >>
    }
}