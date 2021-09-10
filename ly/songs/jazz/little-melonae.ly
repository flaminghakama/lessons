\version "2.19.81"

titleLeft = "Little"
titleRight = "Melonae"
title = "Little Melonae"
composerName = "J. McLean"

%{

killPreview ; rm little-melonae*pdf ;  lilypond ly/songs/jazz/little-melonae.ly  ; for file in little-melonae*.pdf ; do op $file ; done  

killPreview
rm little-melonae*pdf
lilypond ly/songs/jazz/little-melonae.ly
mv little-melonae*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/little-melonae*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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
    \key bf \minor 
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        \time 4/4
        s1*3
        s1
        \bar "||"
        \time 3/4 
        s2.
        \bar "||"
        \time 4/4
        s1*2
    }
    \alternative { 
        { s1*2 \bar ":|]" } 
        { s1*2 } 
    }
    
    \startSection "B"
    s1*4
    s1*4 \break
    
    \startSection "A"
    s1*3 
    s1
    \bar "||"
    \time 3/4 
    s2.
    \bar "||"
    \time 4/4
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*2 | s4. c8:7.5- s2 |
    s1 | s8 f8:7.5- s2 | g1:m | s | 
    s1*2 || 
    s1*2 || 

    a1:m7.5- | af:9.11+ | g:m7 | s | 
    g1:m7.5- | c:aug7.9- | cf:13 | s | 

    f1:7.5- | s | s4. c8:7.5- s2 |
    s1 | s8 f8:7.5- s2 | g1:m | s | 
    s1*2 || 
}


chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsForm
}

melodyFormInEb = \relative c'' { 
    d8 ( f c bf fs d' ) r fs, ( | c' fs, cs'4 ) r d | r4 r8 e ~ 4 r |  
    \tag #'Eb { \tupletDown } 
    \tag #'(C Bb) { \tupletUp } 
    \override TupletBracket.bracket-visibility = ##f
    \tuplet 3/2 4 { f8 ( d bf g fs ) r d' ( bf g } fs4 ) |
    \tupletNeutral
    r8 d' r d r bf ( | 
    g8 fs g bf ) cs ( d bf fs | bf4. ) fs8 ( as b ) r4 | 
    r4 \grace { fs'8 ( } g2 ) c,8 8 | f4 df4 4 r8 a ||
        r4 \grace { fs'8 ( } g2 ) c,8 8 | f4 df4 4 r ||

    b'8 8 4-. r8 \grace { a8 ( } b4. ) | 
    b8 8 4-. r8 \grace { a8 ( } b4. ) | 
    b8 8 4-. r8 \grace { a8 ( } b4. ) | 
    b8 8 4-. r8 \grace { a8 ( } b ~ \tuplet 3/2 { b8 a af ) } | 

    g8 8 4-. r8 g ( ~ \tuplet 3/2 { g4 d8 ) } | 
    g8 8 4-. r8 g ( ~ \tuplet 3/2 { g4 d8 ) } | 
    f8 8 4-. r8 f ( ~ \tuplet 3/2 { f4 c'8 ) } |
    f,8 8 4-. r2 || 

    d8 ( f c bf fs d' ) r fs, ( | c' fs, cs'4 ) r d | r4 r8 e ~ 4 r |  
    \tag #'Eb { \tupletDown } 
    \tag #'(C Bb) { \tupletUp } 
    \tuplet 3/2 4 { f8 ( d bf g fs ) r d' ( bf g } fs4 ) |
    \tupletNeutral
    r8 d' r d r bf ( | 
    g8 fs g bf ) cs ( d bf fs | bf4. ) fs8 ( as b ) r4 | 
    r4 \grace { fs'8 ( } g2 ) c,8 8 | f4 df4 4 r ||
}


melody = \relative c' { 
    \transpose c ef, \melodyFormInEb

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
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead" \keepWithTag #'(Eb) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead"  \keepWithTag #'(Bb) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
