\version "2.19.81"

titleLeft = "Con"
titleRight = "Alma"
title = "Con Alma"
composerName = "J. B. 'D.' Gillespie"

%{

killPreview ; rm con-alma*pdf ;  lilypond ly/songs/jazz/con-alma.ly  ; for file in con-alma*.pdf ; do op $file ; done  

killPreview
rm con-alma*pdf
lilypond ly/songs/jazz/con-alma.ly
mv con-alma*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/con-alma*.pdf ; do op $file ; done  

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

structure = \relative c' { 
    \key c \major 
    \time 4/4
    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*4 \break
        s1*3 
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 }
    }
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection "A"
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    e2:maj7 gs:7/ds | cs:m7 b:7 | bf1:7 | ef2:maj7 ef4:m7 af:7 | 
    df2:maj7 f:7/c | bf:m7 af:7 | g1:7 | c2:maj7 fs4:m7 b:7 ||
        c1:maj7 ||

    c1:m7.5- | f:7.9- | fs:m7 | b:7 |
    e1:maj7 | s | f:m7 | bf2:7 fs4:m7 b:7 ||

    e2:maj7 gs:7/ds | cs:m7 b:7 | bf1:7 | ef2:maj7 ef4:m7 af:7 | 
    df2:maj7 f:7/c | bf:m7 af:7 | g1:7| c:maj7 ||
}
chordsForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ff2:maj7 af:7/ef | df:m7 cf:7 | bf1:7| ef2:maj7 ef4:m7 af:7 | 
    df2:maj7 f:7/c | bf:m7 af:7 | g1:7 | c2:maj7 fs4:m7 b:7 ||
        c1:maj7 ||

    c1:m7.5- | f:7.9- | fs:m7 | b:7 |
    e1:maj7 | s | f:m7 | bf2:7 fs4:m7 b:7 ||

    ff2:maj7 af:7/ef | df:m7 cf:7 | bf1:7 | ef2:maj7 ef4:m7 af:7 | 
    df2:maj7 f:7/c | bf:m7 af:7 | g1:7 | c:maj7 ||
}

melody = \relative c'' {
    <gs e>2 <gs ds> | <gs cs,> <gs b,> | <af bf,>4. bf16 cf bf4 af | g2. gf8 af |
    <f df>2 <f c> | <f bf,> <f af,> | <f g,>4. g16 af g4 f | e2. r4 ||
        e2.\repeatTie r8 ef16 f ||

    gf4. f8 ef d r ef ~ | 2 \tuplet 3/2 { f4 gf af } |
    a4. gs8 fs e r fs ~ | 2. gs8 a | 
    b1 ~ | 4. e,8 ~ 8 gs4 b16 cs | 
    bf1 ~ | 2. r4 ||

    <gs e>2 <gs ds> | <gs cs,> <gs b,> | <af bf,>4. bf16 cf bf4 af | g2. gf8 af |
    <f df>2 <f c> | <f bf,> <f af,> | <f g,>4. g16 af g4 f | e2. r4 |
}

melodyForFlats = \relative c'' {
    <af ff>2 <af ef> | <af df,> <af cf,> | <af bf,>4. bf16 cf bf4 af | g2. gf8 af |
    <f df>2 <f c> | <f bf,> <f af,> | <f g,>4. g16 af g4 f | e2. r4 ||
        e2.\repeatTie r8 ef16 f ||

    gf4. f8 ef d r ef ~ | 2 \tuplet 3/2 { f4 gf af } |
    a4. gs8 fs e r fs ~ | 2. gs8 a | 
    b1 ~ | 4. e,8 ~ 8 gs4 b16 cs | 
    bf1 ~ | 2. r4 ||

    <af ff>2 <af ef> | <af df,> <af cf,> | <af bf,>4. bf16 cf bf4 af | g2. gf8 af |
    <f df>2 <f c> | <f bf,> <f af,> | <f g,>4. g16 af g4 f | e2. r4 |
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
                    \melody
                >>
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
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForFlats
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForFlats
                >>
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
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForFlats
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForFlats
                >>
            }
        >>
    }
}

