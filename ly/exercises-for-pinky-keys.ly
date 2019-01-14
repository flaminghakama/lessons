\version "2.19.15"
\include "english.ly"

titleLeft = "Exercises for"
titleRight = "Pinky Keys"
title = "Exercises for Pinky Keys"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 
\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

alternateFingering = { <>^\markup { \bold \huge "+" } }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"

aMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1 | r | r | r | r | r | e2:7 a2 | 
    e2:7 a | e:7 a |
    a2 e | a e | d e | a1:maj7 |
    d1 | e | a | r | a4 r4 r2 |
}
aMajorNotes = {
    \relative c''' { 
        \mark "Neighboring notes"
        \bar "[|:"
        a8 ( gs b ) a-.  a ( gs b ) a-.  | gs ( fs a ) gs-.  gs ( fs a ) gs-. |
        fs ( e gs ) fs-.  fs ( e gs ) fs-.  | e ( d cs ) b a2 |
        a8 ( gs b ) a-.  gs ( fs a ) gs-.  | fs ( e gs ) fs-.  e ( d fs ) e-. | 
        d ( cs ) b ( \alternateFingering gs' ) a2 \bar ":|]" 
        d,8 ( cs ) b ( b' ) a2 | gs8 ( d' b' e ) a,2 \bar "||" \break
    }
    \relative c' { 
        \mark "Chordal interchange"
        \bar "[|:"
        e8 ( a cs a ) e ( gs b gs ) | 
        e8 ( a cs a ) e ( gs b gs ) | 
        a ( fs d fs ) \alternateFingering gs ( b, d e ) | 
        a ( gs' e cs ) a2 \bar ":|]" 
        fs'8 ( d ) fs ( d )  fs ( d ) fs ( d ) | 
        gs ( e ) gs ( e ) gs ( e ) gs ( e ) | 
        a a ( gs ) a  e e ( ds ) e | 
        cs cs ( bs ) cs  a a ( gs ) gs' | 
        a2 a,4 r4 \bar "||"
    }
}

aMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a2:m gs:dim7 | a:m gs:dim7 | 
    a:m gs:dim7 | a:m gs:dim7 | 
    a:m e:7 | a:m gs:dim7 | 
    a:m gs:dim7 | a:m e:7 | 
    a1:m | r8 e4.:7 a2:m | 
    gs1:dim7 | a2:m r ||
}
aMinorNotes = {
    \relative c'' { 
        \mark "Chordal interchange"
        \bar "[|:"
        a8 ( b c e ) f ( d b gs ) | a ( c e a ) gs ( f d b ) |
        c ( d e a ) b ( gs f d ) |  e ( f gs a ) b ( gs b d ) | \break
        c ( b a e ) b' ( a gs e ) | e' ( d c a ) d ( b gs f ) | 
        a a ( e a ) gs gs ( b, gs' ) | f ( e d c ) e e ( gs, e' ) | \break
        c ( b a ) b ( a gs ) a ( e | c ) gs' ( d b ) a'2 | \bar ":|]"  
        f''8 d ( b ) gs (  f ) d ( b ) gs | a2 r2 |  \bar "||"
    }
}

EbMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1 | bf:7 | 
    ef | r | 
    r | bf:7 | 
    r2 ef2 | bf2:7 ef2 | 
    bf1:7 | ef2 r2 |

}
EbMajorNotes = {
    \relative c' { 
        \mark "Major scale and Dominant chord"
        \bar "[|:"
        ef8 ( f ) g af  g ( af ) bf c | af ( bf ) d f  af ( f ) d bf | 
        ef ( d c bf  af ) d ( c bf | af g ) c ( bf  af g f ) bf ( | 
        af g f ef ) af ( g f ef ) | bf ( d f af ) f ( af bf d ) | 
        af ( bf d f ) ef ( f g bf ) | af ( f d bf ) ef2 |    
        \bar ":|]"
        f8 ( d af f ) af16 ( bf af bf ) af ( bf af bf ) | g4 ef' r2 \bar "||" \break
    }
}

fMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    r8 |
    f1:m | r2 c:aug7 | 
    f1:m | c2.:aug7 f4:m | 
    r1 | c2:aug7 f:m ||
    r1 | df | c:aug7 | f4:m c:aug7 f2:m ||

}
fMinorNotes = {
    \relative c' { 
        \bar "[|:"
        \partial 8*1
        f16 ( g )
        \mark "Minor scale and Augmented Dominant chord"
        \bar "||"
        af16 ( g ) f g  af ( g ) f g  f8 ( ef ) df ( c ) | 
        af'16 ( g ) f g  af ( g ) e af  c4.  af16 ( bf ) | 
        c16 ( bf ) af bf  c ( bf ) af bf  c8 ( df ) e ( af, ) | 
        e16 ( af bf c )  af ( bf c e )  bf ( c e af ) f4 | 
        c8 ( af ) c ( f, ) af ( c, ) ef ( df ) | 
        c8 ( bf' ) af ( e ) f4. \bar ":|]" \noBreak
        f'16 ( g )  \bar "||" \noBreak
        af16 ( g ) e f   g ( f ) bf, c  df8 ( c ) af ( f ) | 
        df8 ( f af c )  df ( f af c ) |
        bf16 ( e, c af )  e' ( c bf e, ) af ( e c bf ) e''4 |
        af,16 ( g ) f g af ( e ) bf c  f,2 \bar "||" \break
    }
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    indent = 1.25\cm
    short-indent = 1.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
    }
}

\bookpart {
    \header {
        subtitle = "G#/Ab Pinky Key"
    }

    \score {
        \header {
            piece = "A Major"
        } 
        << 
            \new ChordNames \transpose c c { 
                \aMajorChords 
            }
            \new Staff { 
                \numericTimeSignature 
                \key a \major
                \aMajorNotes
            \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "A Minor"
        } 
        << 
            \new ChordNames \transpose c c { 
                \aMinorChords 
            }
            \new Staff { 
                \numericTimeSignature 
                \key a \minor
                \aMinorNotes
            \bar "||"\pageBreak
            }
        >>
    }
    \score {
        \header {
            piece = "Eb Major"
        } 
        << 
            \new ChordNames \transpose c c { 
                \EbMajorChords 
            }
            \new Staff { 
                \numericTimeSignature 
                \key ef \major
                \EbMajorNotes
            \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "F Minor"
        } 
        << 
            \new ChordNames \transpose c c { 
                \fMinorChords 
            }
            \new Staff { 
                \numericTimeSignature 
                \key f \minor
                \fMinorNotes
            \bar "||"
            }
        >>
    }
 }
