\version "2.19.81"

titleLeft = "Butter"
titleRight = "fly"
title = "Butterfly"
composerName = "G. Fischer"
lyricistName = "D. Koldenhoven"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm butterfly*pdf
lilypond ly/songs/jazz/butterfly.ly
op butterfly-for-C.pdf 
mv butterfly*pdf pdf/songs/jazz
for file in pdf/songs/jazz/butterfly*pdf ; do op $file ; done

%}


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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    
    \key c \major
    \time 2/2 

    \tempo Samba 2=100
    \repeat volta 2 { 
        \bar "[|:" s1*4 \bar ":|]" s1*2 \break

        \startSection "A"
        \bar "S[|:" s1*8 \break s1*8 \break 

        \startSection "B"
        \bar "||" s1*8 

        \startSection "C"
        \bar "||" s1*3 \pageBreak s1*5 \break
        \bar "||" s1*8
    }
    \alternative {
        { s1*2 \bar ":|]" }
        { s1 }
    } 
    s1 \break s1*6 \break
    \startSection "Woodwind Melody"
    s1*4 \break s1*4 

    \startSection "D"
    \bar "||" s1*4 \pageBreak s1*4 \break
    \bar "||" s1*16 
    %<>^"D.S. al Coda"
    \bar "||"
}

eighths = { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.85)
}

noEighths = {
    \override Stem.length-fraction = #(magstep 0.5)
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }


    \key c \major   
    \time 2/2 

    s1*4
    \bar "||"
    \time 3/2 
    s1.
    \bar "||"
    \time 2/2
    s1*4 \break

    \startSection "E"
    \bar "[|:" s1*4 \bar ":|]" \break
    s1*8
    \bar "|."
}

chordsA = \chordmode { 
    c1:6.9 | s | d:9.11+ | s | 
    g1:13.9-.11+ | g:aug7.9-.11+ | 
}

chordsB = \chordmode { 
    f1:maj7 | f2:m7 bf:7 | ef1:maj7 | ef2:m7 af:7 | 
    df1:maj7 | g:9 | e2:m7.11 a:aug7.9- |
}

chordsC = \chordmode { 
    f1:6.9 | bf:9.11+ | e:m7.11 | s4 a2.:aug7.9- | 
    df1:maj7 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:6.9 | s | s | s2 g:m9 || gf1:7.9+ | s ||

    % A
    \chordsA | c1:maj9 | g:aug9 | 
    \chordsA | g1:m9 |  c1:9.11+ | 

    % B
    \chordsB | d2:m9 g:aug9 ||

    % C
    \chordsA | g2:m7 c:9 | gf1:7.9+ |
    \chordsC | g2:7 g2:7.5-.9- | c1:6 | s |

    c1:6.9 | s2 g2:m9 ||
    \chordsA | c1:maj9 | g:aug9 | 
    \chordsA | g1:m9 |  c1:9.11+ ||

    % D
    \chordsB | d2:m9 fs:7.5- ||
    \chordsC | g1:9 | e2:m11 a:7.9- | d:m9 g:aug9 |    
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    df1:maj7 | g2:9 g:7.5-.9- | c1:6.9 | s | 
    df1.:maj7 ||
    df1:maj7 | g2:9 g:7.5-.9- | c1:6.9 | s | 

    % E
    c1:6.9 | s | s | s2 g2:m9 ||
    c1:6.9 | s | gf:7.9+ | s | s | s | 
    c1:6 | s ||
}

melodyIntro = \relative c'' { 
    \repeat percent 3 { \comp #4 } | \comp #4 | 
    \override Staff.NoteHead.style = #'slash
    \tag #'(forC) { a1 ~ 1 }
    \tag #'(forBb) { g1 ~ 1 }
    \tag #'(forEb) \relative c' { c1 ~ 1 } |
    \revert Staff.NoteHead.style
}

melodyA = \relative c' { 
    \eighths
    g8 c d f  e d b c  | e g b d  c b a g | 
    \noEighths
    gs4. a8 ~ 2 | r4 gs2 \glissando e4 | gs4. a8 ~ 2 |
}

melodyB = \relative c' { 
    \eighths
    c8 d e g  f e f g | af bf c b  bf a af g |
    r8 bf, c [d]  f e ef f | gf af bf a  af g gf f | 
    \noEighths
}

melodyC = \relative c'' { 
    \eighths
    ef8 df c bf  af f ef df | c b d g  f af df, b | 
    \noEighths
    c1 ~ | 2.  
}

melodyD = \relative c'' {
    r2 \tuplet 3/2 { a4 b c } | bf4 af g f | 
    g2. af8 bf | af4 gf8 f8 ~ 8 ef!4 f8 ~ | 
    f2 r4 df8 ef | f4 g8 a g4 f | 
    e4. a8 ~ 2 ~ | 2  
}
harmonyD = \relative c' {
    r2 \tuplet 3/2 { f4 g a } | g4 f ef d | 
    ef2. f8 g | f4 ef8 df8 ~ 8 c4 df8 ~ | 
    df2 r4 bf8 c | d4 e8 f e4 d | 
    b4. e8 ~ 2 | f2  
}

melodySong = \relative c' { 

    \melodyIntro

    % A
    \melodyA
    \relative c'' { 
        r4 gs2 a4 | gs4. a8 ~ 2 ~ | 2. r4 | 
    }

    \melodyA
    \relative c'' { 
        r4 gs2 a4 | gs4. a8 ~ 2 ~ | 2. r4 | 
    }

    % B
    \melodyB
    \relative c' { 
        af8 bf af bf  c df c df | d e d e  f g f g | 
        a4. 8 ~ 2 ~ | 2 \comp #2 | 
    }

    % C
    \melodyA
    \relative c'' { 
        r4 gs2 a4 | gs4 a8 c ~ 2 ~ | 1 | 

        \eighths
        c4 a8 f d f a f | c' af e'4  c8 af f af |
        b8 g d'4  b8 g e g | b g \noEighths cs4 ~ 4 r8 c |
    }
    \melodyC  \toCoda r4 |
    \comp #8 ||

    % 2nd Ending
    \melodyA
    \relative c'' { 
        r4 gs2 a4 | gs4. a8 ~ 2 ~ | 2. r4 | 
    }
    \melodyA
    \relative c'' { 
        r4 gs2 a4 | gs4. a8 ~ 2 ~ | 2. r4 | 
    }


    % D
    << 
        \relative c' { 
            \melodyB
            \eighths
            af8 bf af bf  c df c df | d e d e  f g f g | 
            \noEighths
            a4. 8 ~ 2 ~ | 2.  
        }
        \relative c { 
            s1*4 | 
            f8 g f g  af! bf! af bf | b c b c  d e d e | 
            e4. 8 ~ 2 ~ | 2. 
        }
    >> r4 | 

    <<
        \melodyD
        \harmonyD
    >> \comp #2 |
    <<
        \melodyD
        \harmonyD
    >> \comp #2 |
}

melodyCoda = \relative c' { 

    \melodyC r4 
    \relative c'' { 
        \eighths
        ef8 df c bf  af4 ef'8 df  c bf af4 ||
        \noEighths
    }
    \melodyC r4 

    <<
        \relative c'' { g1 ~ | 1 ~ | 1 ~ | 2 }
        \relative c' { d1 ~ | 1 ~ | 1 ~ | 2 }
    >> \comp #2 |

    \relative c'' { 
        c1 ~ | 2 \comp #2 | 
        a'1 ~ | 1 ~ | 1 ~ | 2 r2 | 
        c,,1 \glissando | \fermata c'' 
    }
}

lyricsHead = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }

    % A
    Pret -- ty lit -- tle but -- ter -- fly you
    Flit -- 'n'  flut -- ter drift -- ing div -- ing 
    wan -- d'ring o -- ver bloom -- ing 
    fields of clo -- ver 

    Search -- ing for that per -- fect flow -- er 
    to re -- lease its spe -- cial pow -- er 
    shar -- ing star -- dust stor -- ies 
    with each o -- ther 

    % B
    Where do you be -- gin your jour -- ney?
    Or are you near -- by re -- turn -- ing
    Or do you come a -- lone or 
    with a friend ex -- tend the pleas -- ure 
    stop -- ping by to say hel -- lo to 
    e -- v'ry lit -- tle bright -- ly co -- lored 
    flow -- er 

    % C
    Glow -- ing gent -- ly in the sun you 
    lin -- ger for a mo -- ment 'til the 
    warm air floats you guides you 
    on your mer -- ry way

    O -- ver and o -- ver tumb -- ling 
    soar -- ing high dan -- cing wings en -- 
    joy the sky not a wor -- ry 
    not a care     now  

    would -- n't it be nice to sam -- ba
    through your life just like a but -- ter -- fly 

}
lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Would -- n't it be nice to sam -- ba
    through your life just like a but -- ter -- fly 

    Would -- n't it be nice 
    It would be so nice

    Would -- n't it be nice to sam -- ba
    through your life just like a but -- ter -- fly 

    Fly  
    Fly
    Fly
    Fly
}


\header {
    title = \title
    subtitle = "Samba da Borboleta"
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Lead Sheet"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
    }
    \score {
        <<
            \new ChordNames \keepWithTag #'(forC) \transpose c c  { 
                \chordsSong
            }
            \new Staff = "voice" \keepWithTag #'(forC) \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \autoPageBreaksOff
                    \structure
                    \melodySong
                    \noPageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }


    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \keepWithTag #'(forC) \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \keepWithTag #'(forC) \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "Lead Sheet in Bb"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \keepWithTag #'(forBb) \transpose bf, c  { 
                \chordsSong
            }
            \new Staff = "voice" \keepWithTag #'(forBb) \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \autoPageBreaksOff
                    \structure
                    \melodySong
                    \noPageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }


    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \keepWithTag #'(forBb) \transpose bf, c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \keepWithTag #'(forBb) \transpose bf, c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Lead Sheet in Eb"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \keepWithTag #'(forEb) \transpose ef, c  { 
                \chordsSong
            }
            \new Staff = "voice" \keepWithTag #'(forEb) \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \autoPageBreaksOff
                    \structure
                    \melodySong
                    \noPageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }


    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \keepWithTag #'(forEb) \transpose ef, c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \keepWithTag #'(forEb) \transpose ef, c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}