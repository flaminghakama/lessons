\version "2.19.83"

titleLeft = "Ocean (Where"
titleRight = "Feet May Fail)"
title = "Ocean (Where Feet May Fail)"
composerName = "Hillsong United"
%lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm ocean*pdf ; lilypond ly/songs/pop/ocean.ly ; for file in ocean*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/ocean*
lilypond ly/songs/pop/ocean.ly 
mv ocean*pdf pdf/songs/pop
for file in pdf/songs/pop/ocean*pdf ; do op $file ; done 

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key g \major
    \time 4/4
    \tempo 4=66

    \startSection "1 Introduction"
    s1*4
    \startSection "2 Verse"
    s1*8
    \startSection "3 Chorus"
    s1*8
    \startSection "4 Bridge"
    s1*3
    \startSection "5 Verse"
    s1*8
    \startSection "6 Chorus"
    s1*8
    \startSection "7"
    s1*15
    \startSectionNoBarline "8"
    \bar "[|:"
    s1*8
    \bar ":|][|:"
    s1*8
    \bar ":|]"
    \startSection " "
    s1*8
    \startSection "9"
    s1*6
    \startSection "10"
    s1*6
    \startSection "11 Chorus"
    s1*8
    \bar "|."
}

pageBreaksRegular = \relative c' { 

    % "1 Introduction"
    s1*4
    % "2 Verse"
    s1*8
    % "3 Chorus"
    s1*8
    % "4 Bridge"
    s1*3
    % "5 Verse"
    s1*8

    \pageBreak

    % "6 Chorus"
    s1*8
    % "7"
    s1*15
    %NoBarline "8"
    s1*8
    s1*8

    \pageBreak

    % " "
    s1*8
    % "9"
    s1*6
    % "10"
    s1*6
    % "11 Chorus"
    s1*8
}


pageBreaksEasyNotes = \relative c' { 

    % "1 Introduction"
    s1*4
    % "2 Verse"
    s1*8
    % "3 Chorus"
    s1*8
    % "4 Bridge"
    s1*3
    \pageBreak

    % "5 Verse"
    s1*8
    % "6 Chorus"
    s1*8
    % "7"
    s1*15

    \pageBreak

    %NoBarline "8"
    s1*8
    s1*8
    % " "
    s1*8

    \pageBreak

    % "9"
    s1*6
    % "10"
    s1*6
    % "11 Chorus"
    s1*8
}

chordsConcert = \chordmode { 

    % intro
    d2.:m c4 | f1 | c | bf | 

    % verseOne
    d2.:m c4 | f1 | c | g:m | 
    d2.:m c4 | f1 | c | g:m | 

    % chorus 
    bf2 f | c1 | bf2 f | c1 |
    bf2 f | c1 | bf2 c | d1:m |

    % bridge           
    f1 | c | g:m |

    % verseTwo
    d2.:m c4 | f1 | c | g:m | 
    d2.:m c4 | f1 | c | g:m | 

    % chorus 
    bf2 f | c1 | bf2 f | c1 |
    bf2 f | c1 | bf2 c | d2.:m c4 |

    % section 7
    f1 | c | g:m | 
    d2.:m c4 | f1 | c | g:m | 

    d1:m | bf | f | c | 
    d1:m | bf | f | c |  

    % section 8 
    d1:m | bf | f | c | 
    d1:m | bf | f | c | 

    bf1 | f | c | g:m | 
    bf1 | f | c | g:m | 

    d2.:m c4 | f1 | c | g:m | 
    d2.:m c4 | f1 | c | g:m | 

    % section 9 
    d2.:m c4 | f1 | c | g:m | 
    d2.:m c4 | f1 | 

    % section 10 
    c1 | g:m | d2.:m c4 | f1 | 
    c1 | g:m | 

    % chorus 3 
    bf2 f | c1 | bf2 f | c1 |
    bf2 f | c1 | bf2 c | d1:m |

}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    \transpose bf, c \chordsConcert
}

introduction = \relative c' { 
    d2. fs4 | g1 | a, | c | 
}

verseOne = \relative c' { 
    r8. d16  e8. d16  e8. d16  fs8. g16 | 
    g4  d  r8. d16 g8. 16 ~ | 
    g8 fs4.  r8. d16  fs8. g16 ~ | 
    g8 e4. r2 | 

    r8. d16  e8. d16  e8. d16  fs8. g16 | 
    g4  d  r8. g16  8. a16 ~ | 
    a8 4.  r8. g16  b a8 g16 ~ | 
    g8 e4. ~ 4 r | 
}
chorusOne = \relative c'' { 
    r8. g16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. ~ 4. r8 |
    r8. g16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. r8. g16  b a g8 | 
    e8. 16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a ~ 8. g16  b4 d | 
    e,2 r8. e16  fs8. 16 | 
    g8 4.  ~ 8 b16 g  a b g b |
}
bridgeOne = \relative c'' { 
    r8 b16 g  a8 b  r b16 g  a b g b |
    r8 a16 fs  a8 8  r a16 fs  a a g a | 
    r8 c16 a16  8 c  r c16 a  a c a c | 
}
verseTwo = \relative c' { 
    r8. d16  e8. d16  e8. d16  fs8. g16 | 
    g4  d  r8. d16 g8. 16 ~ | 
    g8 fs4.  r8. d16  fs8. g16 ~ | 
    g8 e4. r2 | 

    r8. d16  e8. d16  e8. d16  fs8. g16 | 
    g4  d  r8. g16  8. a16 ~ | 
    a8 4.  r16 g g b a8 g ~ | 
    g8 4. r2 | 
}
chorusTwo = \relative c'' { 
    r8. g16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. ~ 4. r8 |
    r8. g16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. r8. g16  b a g8 | 
    e8. 16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a ~ 8. g16  b4 d | 
    e,2 r8. e16  fs8. g16 ~ | 
    g8 4.  ~ 4   a8. b32 c |
}
sectionSeven = \relative c'' { 
    b1 | R1 |
    r2 r8. e,16 b'8. 16 | a8 b4. ~ 4 a8. b32 b |
    b1 | a1 |
    R1 | g1 | g | g | 
    fs1 | g | g | g | fs | 
}
sectionEight = \relative c'' { 
    r4 d16 e8 16 ~ 8 b16 16 ~ 16 d8 16 ~ | 
    d8 c16 16 ~ 16 b8 16 ~ 8 a  r16 g d'16 16 ~ |
    d8 c16 16 ~ 8 b16 16 ~ 8 a4 g8 | 
    a8 g16 a ~ 8 g c4 b |  

    r4 d16 e8 16 ~ 8 b16 16 ~ 16 d8 16 ~ | 
    d8 c16 16 ~ 16 b8 16 ~ 8 a  r16 g d'16 16 ~ |
    d8 c16 16 ~ 16 b8 16 ~ 8 a ~ 16 g g a ~ | 
    a8 g16 a ~ 8 g c4 b |   
}
sectionNine = \relative c'' { 
    r4 d16 e8 g16 ~ 8 fs16 e16 ~ 16 d8 e16 ~ | 
    e8 b16 16 ~ 8  d16 16 ~ 8 e  r16 a, d d ~ | 
    d8 16 e ~  16 b8 16 ~  8 a ~  16 g g a ~ | 
    a8 g16 a ~  8 g c4 d ~ | 
    d2 e ~ | 
    e4 ~ 16 fs32 e d16 e d2 | 
}
sectionTen = \relative c''' { 
    r2 r8 g16 fs ~ 4 | 
    g8. e16 ~  8 g ~  4 e | 
    R1*2 |

    r16 fs8 16 ~  16 d8 16 ~  4 g ~ | 
    g16 g fs e ~  2 r4 | 
}
chorusThree = \relative c'' { 
    r4 e8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. ~ 4. r8 | 
    r4 e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4.  r8. g16  b a g8 |
    e8. 16  e'8. d16  b8. 16  16 a8 g16 ~ | 
    g8 a4. b4 d | 
    e2 r8. e16  fs8. 16 | 
    g8 4. ~ 4 r | 
}

melody = \relative c'' { 

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.05)
    \introduction
    \verseOne
    \transpose c c, \chorusOne
    \transpose c c, \bridgeOne
    \verseTwo
    \transpose c c, \chorusTwo
    \transpose c c, \sectionSeven

    \transpose c c, \sectionEight
    \transpose c c, \sectionEight
    \transpose c c, \sectionEight

    \transpose c c, \sectionNine
    \transpose c c, \sectionTen
    \transpose c c, \chorusThree
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Bb Clarinet"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Clarinet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \pageBreaksRegular
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "easynotes-for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Clarinet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \with {
                \magnifyStaff #(magstep 3)
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \pageBreaksEasyNotes
                    \easyHeadsOn
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
