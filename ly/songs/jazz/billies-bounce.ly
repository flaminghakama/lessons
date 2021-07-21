\version "2.19.81"

titleLeft = "Billie's"
titleRight = "Bounce"
titleFull = "Billie's Bounce"
composerName = "C. Parker"

%{

rm jordu*pdf
lilypond ly/songs/jazz/jordu.ly
mv jordu*pdf ly/songs/jazz
#python ~/git/PyPDF2/Scripts/pdfcat -o jordu-very-simplified-and-full-for-Eb.pdf pdf/songs/jazz/jordu-very-simplified-for-Eb.pdf pdf/songs/jazz/jordu-for-Eb.pdf
#python ~/git/PyPDF2/Scripts/pdfcat -o jordu-and-low-bridge-for-Eb.pdf pdf/songs/jazz/jordu-for-Eb.pdf pdf/songs/jazz/jordu-low-bridge-for-Eb.pdf
#python ~/git/PyPDF2/Scripts/pdfcat -o jordu-simplifieds-for-Eb.pdf pdf/songs/jazz/jordu-simplified-for-Eb.pdf pdf/songs/jazz/jordu-simplified-low-bridge-for-Eb.pdf
#mv jordu*pdf pdf/songs/jazz/printable
for file in pdf/songs/jazz/jordu*pdf ; do op $file ; done

%}

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #10
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

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key f \major
    \partial 8*1 s8
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar ":|]"
    \mark "Bird Solo"
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:7 | bf:7 | f:7 | c2:m7 f:7 | 
    bf1:7 | b:dim7 | f:7 | a2:m7 d:7 | 
    g1:m7 | c:7 | f2:7 d:7 | g:m7 c:7 |
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s8 ||
    \chordsForm
    \chordsForm
}

melody = \relative c' { 
    c8 ( | b c ) f af ( a ) f ( d ) f-> ( ~ | 8 d ) f4 r8 f4-> ( d8 ) |
    f4 r8 f-> ( ~ 8 d ) f d | af' a \tuplet 3/2 { f16 ( g f } d8 ) f g f f | 

    r4 r8 a bf f r af | r bf4. ef8 c f ef | 
    r8 f c4 r r8 e-> ~ | 4 g,8 ( e ) fs ef' c ( cs |

    d4 ) r8 g8 \tuplet 3/2 { fs16 ( g fs } d8 ) bf ( f ) | f'4-> r8 f e e d d | 
    c4 r8 f,8-> ( ~ 8 d ) f4 | r8 f4-> ( d8 ) f4 r8 
}

solo = \relative c' { 
    c8 | 
    f4 g8 af ( a4 ) bf8 b ( | 
    c a ) \tuplet 3/2 { bf8 ( c bf } a8 ) f d c | 
    \tuplet 3/2 { g'16 ( a g } f8 ) ef f ~ 4 r | 
    r2 r4 r8 f' ( ~ |

    f8 c16 bf ) af8 f g f ef d |
    c4 bf8 f af a bf b | 
    c8 ( d16 c ) a8 c e d4. | 
    R1 | 

    r4 r8 \tuplet 3/2 { g16 ( bf d } f8 ) e d df | 
    c8 a bf ( c16 bf ) a8 f d c | 
    g'8 ( f ) g ( a ~ 4 ) r | 
    R1 |
}

\header {
    title = \titleFull
    composer = \composerName
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "Concert"
    }
    \score {
        <<
            \new ChordNames \transpose c c \chordsSong
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \melody
                        \solo
                    }
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Alto Saxophone"
    }
    \score {
        <<
            \new ChordNames \transpose ef c \chordsSong
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \melody
                        \solo
                    }
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Tenor Saxophone"
    }
    \score {
        <<
            \new ChordNames \transpose bf c \chordsSong
            \new Staff = "lead" \transpose bf, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \melody
                        \solo
                    }
                >>
            }
        >>
    }
}

