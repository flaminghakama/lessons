\version "2.24.0"

titleLeft = "Lolo"
titleRight = ""
titleFull = "Lolo"
composerName = "B. Paul"
arranger = ""
copyright = ""

%{

killPreview ; rm lolo*pdf ;  lilypond ly/songs/paul/lolo.ly  ; for file in lolo*.pdf ; do op $file ; done  

killPreview
rm lolo*pdf
lilypond ly/songs/paul/lolo.ly
mv lolo*.pdf pdf/songs/paul
for file in pdf/songs/paul/lolo*.pdf ; do op $file ; done  

git add . ; git commit -m"single and double page versions" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #4

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


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 
    \key bf \major 
    \time 4/4
    \tempo "Half-time hip hop feel" 2=110 
    \partial 4*1
    s4
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \startSection "A1"
    s1*4 \break
    s1*4 \break
    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    \startSection "A2"
    s1*4 \break
    s1*4 \break
    \override Score.RehearsalMark.extra-offset = #'( -5 . -1 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    \startSection "A3"
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 
    
    bf2:maj7 g:7 | c:m7 f:7 | d:7 g:7 | c:m7.5- f:7 | 
    bf2:maj7 bf:maj7/d | ef:6 e:dim7 | c1:m7 | f:7 | 

    bf2:maj7 g:7 | c:m7 f:7 | d:7 g:7 | c:m7.5- f:7 | 
    bf2:maj7 bf:maj7/d | ef:6 e:dim7 | c:m7 f:7 | bf1:maj7 |

    d1:7.13- | s | g:7.9- | s | 
    c1:7 | s | f:7.9- | s |

    bf2:maj7 g:7 | c:m7 f:7 | d:7 g:7 | c:m7.5- f:7 | 
    bf2:maj7 bf:maj7/d | ef:6 e:dim7 | c1:m7 | bf2:maj7 f:7 |
}
chordsForFlats = \chordmode { 
    \chordsForm
}

melodyTop = \relative c''' {
    bf8-> 8-> ||
    r2 r4 r8 c,-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 a ~ 8 ef f g | 
    a4 r r r8 c-> ~ | 8 af16 gf f8 a ~ 8 cs, d g | 

    f4 r r8 f r f | r f bf, [ f' ~ ] 8 bf,4 f'8 |
    bf,8 f' bf, g f' g, e' f-> | r2 r4 bf'8-> 8-> ||


    r2 r4 r8 c,-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 a ~ 8 ef f g | 
    f4-> 4-> 4-> r8 c'-> ~ | 8 af16 gf f8 a8 ~ 8 cs, d g | 

    f4 r r8 f r f | r g, bf [ f'-> ] ~ 8 bf,4 g8 | 
    f'8 4-> g,8 f' bf, f'8 8-> | r2 df8 bf c bf ~ ||


    bf2 df8 bf c bf ~ | 2 df8 bf c bf | 
    \grace { cs8 ( } d4 ) g2. | r2 ef8 c d c ~ | 

    c2 ef8 c d c ~ | 2 ef8 c d c |
    a'8 df4.-> 4.-> 8-> ~ | 2 r4 bf'8-> 8-> ||


    r2 r4 r8 c,-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 a ~ 8 ef f g | 
    f4-> 4-> 4-> r8 c'-> ~ | 8 af16 gf f8 a ~ 8 cs, d g | 

    f4 r r8 f r f  | r f bf, [ f'-> ] ~ 8 bf,4 f'8 | 
    bf,8 f'4.-> 8 bf, f'8 8 | R1 ||
}

melodyBottom = \relative c''' {
    bf8-> 8-> ||
    r2 r4 r8 a-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 ef d ef f g | 
    \grace { cs,8 ( } d8 ) c r4 r r8 gf'-> ~ | 8 af16 gf f8 ef c cs d g | 

    f4 r r8 bf, r bf | r g bf [ df ~ ] 8 bf4 g8 |
    bf8 df-> bf g ef' g, e' f-> | r2 r4 bf8-> 8-> ||


    r2 r4 r8 a-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 ef d ef f g | 
    \grace { cs,8 ( } d4-> ) \grace { cs8 ( } d4-> ) c4-> r8 gf'8-> ~ | 
        8 af16 gf f8 ef c cs d g | 

    f4 r r8 bf, r bf | r g bf [ df-> ] ~ 8 bf4 g8 | 
    bf8 df4-> g,8 df' bf c bf-> | r2 df8 bf c bf ~ ||


    bf2 df8 bf c bf ~ | 2 df8 bf c bf | 
    \grace { cs8 ( } d4 ) g2. | r2 ef8 c d c ~ | 

    c2 ef8 c d c ~ | 2 ef8 c d c |
    gf'8 df'4.-> 4.-> 8-> ~ | 2 r4 bf8-> 8-> ||


    r2 r4 r8 a-> ~ | 8 \tuplet 3/2 { bf16 a g } f8 ef d ef f g | 
    \grace { cs,8 ( } d4-> ) \grace { cs8 ( } d4-> ) c4-> r8 gf'8-> ~ | 
        8 af16 gf f8 ef c cs d g | 

    f4 r r8 bf, r bf | r g bf [ df-> ] ~ 8 bf4 g8 | 
    bf8 df4.->  8 bf c bf-> | R1 ||
}

\book {
  \bookOutputSuffix "top-for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Top"
        instrumentName = \poet
        subtitle = "2022-06-02"
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyTop
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "bottom-for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Bottom "
        instrumentName = \poet
        subtitle = "2022-06-02"
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyBottom
                >>
            }
        >>
    }
}
