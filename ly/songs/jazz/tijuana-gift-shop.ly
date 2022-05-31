\version "2.19.81"

titleLeft = "Tijuana"
titleRight = "Gift Shop"
title = "Tijuana Gift Shop"
composerName = "C. Mingus"

%{

killPreview ; rm tijuana-gift-shop*pdf ;  lilypond ly/songs/jazz/tijuana-gift-shop.ly  ; for file in tijuana-gift-shop*.pdf ; do op $file ; done  

killPreview
rm tijuana-gift-shop*pdf
lilypond ly/songs/jazz/tijuana-gift-shop.ly
mv tijuana-gift-shop*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tijuana-gift-shop*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #17

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

    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \key f \major
    \tempo 4=220
    \time 4/4
    s1*4 \break
    s1*4 \break


    \startSectionWithLabel "" "Open Vamp"
    \bar "[|:"
    s1*4 

    \startSectionWithLabel "" "On Cue"
    \bar ":|]"
    s1*2 \break
    
    \startSectionNoBarline "Head"
    \bar "S[|:"
    s1*6 \break
    s1*5 \break
    s1*6 \break

    \startSectionWithLabel "" "Open Vamp"
    \bar ":|][|:"
    s1*4 \break

    \startSectionWithLabel "" "On Cue"
    \bar ":|]"
    s1*4
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    s1*8

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -6 . 0 )
    % "Open Vamp"
    s1*4 

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 1 )
    % "On Cue"
    s1*2 
    
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 1 . 2 )
    % "Head"
    s1*17 
    
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -6 . 0 )
    % "Open Vamp"
    s1*4 

    %\override Score.RehearsalMark #'extra-offset = #'( -6 . 0 )
    % "On Cue"
}

rehearsalMarkTweaksForBb = \relative c' { 
    s1*6 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 1 )
}

rehearsalMarkTweaksForEb = \relative c' { 
    s1*6 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 1 )
}

chordsAbove = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s1*4
    s1*4
    f1:7 | ef:m7 | f:7 | ef:m7 | 
    f1:7 | ef:m7 | 
    
    f1 | af2:m df:7 | g1:m | c:7 | 
    fs2:m b:7 | e1 | fs2:m b:aug7 | e1:m | 
    fs1:m | g:m | d:7 | g2:m c:7 | 
    f1:7 | ef:m7 | df:7 | g:m | c:aug7 |

    f1:7 | ef:m7 | f:7 | ef:m7 | 
    f1:7 | ef:m7 | f | s |
}

chordsFormForBb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAbove
}
chordsFormForEb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAbove
}

cymbalsIntro = \drummode {
    cymcb4 4 r8 cymcb8 r cymcb8 | r4 r8 cymcb8 r cymcb8 4 | 
}
snareIntro = \drummode {
    r2 ss4 r | r ss r2     
}
bassIntro = \relative c {
    f4. c'8 ~ 4 f, | ef4. bf'8 ~ 4 ef, | f4 f' c f, | ef bf' ef r |
}
melodyIntroLick = \relative c'' {
    c4. a8 r f c4 | df4. gf8 r bf ef4 | 
}
melodyIntroLickEnd = \relative c'' {
    d4. a8 r f d4 | d8 f b f' a4-^ r | 
}
melodyHead = \relative c' {
    r8 c d [ e ] f g a4 | cf2 ~ 8 df, \tuplet 3/2 { f8 af cf } |
    bf1 | r8 c,8 \tuplet 3/2 { e8 g bf } a4 f | 

    gs2 b8 gs ds b | cs1 | 
    r8 cs8 \tuplet 3/2 { e8 fs gs } fss4 gs | b2 ~ 8 a g e | 

    fs2 ~ 8 d e fs | g8 4. ~ 8 e fs g | 
    a2 ~ 8 fs g a | d4 \tuplet 3/2 { g,8 bf d } bf8 4. | 

    c4 \tuplet 3/2 { f,8 a c } a2 | bf4 \tuplet 3/2 { ef,8 g bf } g8 4. |
    af4 \tuplet 3/2 { df,8 f af } f2 | g1 | gs |
}
melodyEnd = \relative c'' {
    d4-> \comp #7
}

melody = \relative c' { 
    \accidentalStyle default
    s1*4
    \melodyIntroLick \melodyIntroLickEnd
    \clef bass
    \bassIntro
    \clef treble
    \melodyIntroLick
    
    \melodyHead
    \melodyIntroLick \melodyIntroLickEnd
    \melodyIntroLick \melodyEnd
}

melodyForBb = \relative c' { 
    \melody
}

melodyForEb = \relative c' { 
    \melody
}


\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        <<
            \new DrumStaff {
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    { \cymbalsIntro \cymbalsIntro } \\
                    { \snareIntro \snareIntro }
                >>
            }
            \new ChordNames \transpose c c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsAbove
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}
