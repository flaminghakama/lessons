\version "2.19.81"

titleLeft = "Tin Tin"
titleRight = "Deo"
title = "Tin Tin Deo"
composerName = "W. G. Fuller & C. Pozo"

%{
/Users/elaine/git/lessons/ly/songs/jazz/tin-tin-deo.ly
killPreview ; rm tin-din-deo*pdf ;  lilypond ly/songs/jazz/tin-din-deo.ly  ; for file in tin-din-deo*.pdf ; do op $file ; done  

killPreview
rm tin-din-deo*pdf
lilypond ly/songs/jazz/tin-din-deo.ly
mv tin-din-deo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tin-din-deo*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

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

structureDizzystructure = \relative c' { 
    \key f \minor 
    \time 4/4
    \partial 2*1
    s2
    \startSection "A"
    %\repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        \startSection ""
        s1*4 \break
        s1*3 s2
    %}
    %\alternative { 
    %    { s2 \bar ":|]" }
    %    { s2 }
    %} 
        s2 
        \startSection "A2"
        s1*4 \break
        s1*4 \break
        \startSection ""
        s1*4 \break
        s1*4

    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection ""
    s1*4 \break 
    s1*4 
    \bar "|."
}

structure = \relative c' {

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -9 . -2 )

    \key f \minor 
    \time 4/4
    \startSectionNoBarline "Vamp"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 
    }
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )
    \startSectionNoBarline "A"
    \bar ":|][|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        \startSection ""
        s1*4 \break
        s1*3
    }
    \alternative { 
       { s1 \bar ":|]" }
       { s1 }
    } 

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection ""
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:m7.7+ | c:7.9+ | f:m7.7+ | c:7.9+ ||

    f2:m6 ef:m6 | df:maj9 c:aug7.9+ | f:m6 d:7.9+.13- | g:m7.5- gf:13 | 
    f2:m6 ef:m6 | df:maj9 c:aug7.9+ | f:m9 bf:9 | ef:9 d:aug7.9+ |

    c1:7.9+ | s | f:m6 | s | 
    c1:7.9+ | s | f:m6 | s || s || 

    bf1:m9 | ef:13.5-.9- | af2:maj7 df:9.11+ | c:m7 f:7.9- |
    bf1:m9 | ef:13.5-.9- | af2:maj7 d:m7.5- | g:aug7.9- d:m7.5- |
    
    c1:7.9+ | s | f:m6 | s | 
    c1:7.9+ | s | f:m6 | s || 
}
chordsForFlats = \chordmode { 
    \chordsForm
}

bassIntro = \relative c {
    \clef bass
    f4 c'8 d e4 d8 c | c,4 g'8 bf c ef df c | 
    \clef treble 
    s1 | s2
}

bassIntroForFlats = \relative c' {
    <>^"Bass Cue"
    f4 c'8 d e4 d8 c | c,4 g'8 bf c ef df c | s1 | <>^"melody" s2
}

rhythmIntro = \relative c {
    r8 c r4 r8 c r4 | r8 c r4 r8 c r4 | r8 c r4  |
}

emb = { \grace { df16 c } } 

melodyIntro = {
    s1 | s | R1 | r2 
}

melodyA = \relative c' {
    \tuplet 3/2 { r4 f af } ||
    \tuplet 3/2 2 { c4 4 bf  c c bf } | c2 r8 bf c [ bf ] | 
    \tuplet 3/2 { f4 f af } f2 ~ | 2 \tuplet 3/2 { r4 f af } |

    \tuplet 3/2 2 { c4 4 bf  c c bf } | c2 bf8 c4 bf8 | 
    \tuplet 3/2 { f4 f af } f2 ~ | 2 \tuplet 3/2 { f4 af f } |

    ef8 2.. | r2 \tuplet 3/2 { ef4 c ef } | 
    f8 2..  |  r2 \tuplet 3/2 { f4 af f } |
    ef8 2.. | r2 \tuplet 3/2 { ef4 c ef } | 
    f8 2..  |  r2 \tuplet 3/2 { r4 f af } || r2 r4 
}

melodyDizzy = \relative c' {
    r4 \tuplet 3/2 { r8 f8 af } ||
    \tuplet 3/2 { c4 4 bf } c4 \tuplet 3/2 { c8 bf c ~ } | 4. bf8  c4 \emb bf8 c8 \emb | 
    bf8 f4 8 af8 f4. | r2   

    r4 \tuplet 3/2 { r8 f8 af } |
    \tuplet 3/2 { c4 4 bf } c4 \tuplet 3/2 { c8 bf c ~ } | 4. bf8  c4 \emb bf8 c8 \emb | 
    bf8 f4 8 af8 f4. | r2

    r8 f af [ f ] || ef8 2.. | r2 ef4. c8 ~ | 8 ef f8. 16 ~ 16 ef f8 ~ 4 | r2      
    r8 a4 f8 ~ | 8 c ef8 8 ~ 2 | r4 r8 ef8 ~ 4. c8 ~ | 8 ef f8 8 ~ 2 | r2      
}
melodyDizzyASecond = \relative c' {
    r4 \tuplet 3/2 { r8 f8 af } ||
    \tuplet 3/2 4 { c8 8 bf  c c bf  c c bf  c c bf | 
    c c bf  c4 \emb bf8 } c4 \emb bf8 c ~ | 
    c8 [ \emb bf8 ] c4 \emb  b8 c4 \emb bf8 | 
    c4 \emb bf8 af8 ~ 8 f gf e |

    \tuplet 3/2 4 { f4 c'8  r c bf } c4 \tuplet 3/2 { c8 bf c ~ } | 2 r8 bf c [ \emb bf ] |
    c8 [ \emb bf  f8 8 ] af f4. | r2 

    r8 f af [ f ] || ef8 2.. | r2 ef4. c8 ~ | 8 ef f8. 16 ~ 16 ef f8 ~ 4 | r2      
    r8 af4 f8 ~ | 8 c ef8 8 ~ 2 | r4 r8 ef8 ~ 4. c8 ~ | 8 ef f8 8 ~ 2 | r2      
}

melodyB = \relative c' { 
    f4 || 
    c'4. bf8 r ef4 df8 | c16 df c bf c4 r8 bf af [ g ] ~ | 
    g8 bf af g ~ 8 f g4 | r2 r4 f | 

    c'4. bf8 r ef4 df8 | c16 df c bf c4 \tuplet 3/2 { r4 bf af } |
    \tuplet 3/2 2 { g4 ef f g ef f } | g4 r \tuplet 3/2 { f4 c f } | 

    ef8 2.. | r2 \tuplet 3/2 { ef4 c ef } | 
    f8 2..  |  r2 \tuplet 3/2 { f4 af f } |
    ef8 2.. | r2 \tuplet 3/2 { ef4 c ef } | 
    f8 2..  |  <>_"Solos on AAB" R1 ||
} 

melody = \relative c'' {
    \melodyIntro
    \melodyA
    \melodyB
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
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
                    << 
                        \melody
                        \bassIntro
                    >>
                >>
            }
        >>
    }
}
\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    << 
                        \melody
                        \bassIntroForFlats
                    >>
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    << 
                        \melody
                        \transpose c c, \bassIntroForFlats
                    >>
                >>
            }
        >>
    }
}


