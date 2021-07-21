\version "2.19.81"

titleLeft = "Afro"
titleRight = "Blue"
title = "Afro Blue"
composerName = "M. Santamaria"

%{

killPreview ; rm afro-blue*pdf ;  lilypond ly/songs/afro-blue.ly  ; for file in afro-blue*.pdf ; do op $file ; done  

killPreview
rm afro-blue*pdf
lilypond ly/songs/jazz/afro-blue.ly
mv afro-blue*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/afro-blue*.pdf ; do op $file ; done  

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
    \key f \minor 
    \time 3/4
    s2.*4 \break
    s2.*4 
    \bar "||" \break
    s2.*4 \break
    s2.*4 
    \bar "||" \break
    s2.*7 
    s2.
    \bar "||" \break
    s2.*4 \break
    s2.*4 
    \bar "||" \break
    s2.*4 \break
    s2.*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2.:m7 | g:m7 | af4.:maj7 g:m7 | f2.:m7 |
    f2.:m7 | g:m7 | af4.:maj7 g:m7 | f2.:m7 |
    ef2.: | s | df4. ef | f2.:m7 | 
    ef2.: | s | df4. ef | f2.:m7 | 

    f2.:m7 | s2.*6 | s2.

    f2.:m7 | g:m7 | af4.:maj7 g:m7 | f2.:m7 |
    f2.:m7 | g:m7 | af4.:maj7 g:m7 | f2.:m7 |
    ef2.: | s | df4. ef | f2.:m7 | 
    ef2.: | s | df4. ef | f2.:m7 | 
}


chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsForm
}

melodyForm = \relative c' { 
    f4 c'4. af8 | bf2. | af4. bf | f2 r8 c8 |
    f4 c'4. af8 | bf2. | af4. bf | f2. |
    ef4 4 g | ef2. | df4. ef | f2. | 
    ef4 4 g | ef2. | df4. af' | f2. ||

    R2.*7 | 
    r4 r f8 af ||
    c8 ef4-. 4 df8 | c4-. 4 bf8 g | af8 4-. g ef8 | f2 f8 af | 
    c4-. ef4. df8 | c4. c8 bf [ g ] | af8 4-. g ef8 | f8 [ 8 ] 8 4. ||
    ef4 4 g | ef2. | df4. ef | f2. | 
    ef4 4 g | ef2. | df4. af' | f2. ||
}

melody = \relative c' { 
    \melodyForm
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
            \new ChordNames \transpose c c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsHead 
            }
            \new Staff = "lead" \transpose c c {
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
        <<
            \new ChordNames \transpose ef c { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsHead 
            }
            \new Staff = "lead" \transpose ef, c {
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
