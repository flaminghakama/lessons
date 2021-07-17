\version "2.19.81"

titleLeft = "Serenity"
titleRight = ""
title = "Serenity"
composerName = "J. Henderson"

%{

killPreview ; rm serenity*pdf ;  lilypond ly/songs/standards/serenity.ly  ; for file in serenity*.pdf ; do op $file ; done  

killPreview
rm serenity*pdf
lilypond ly/songs/standards/serenity.ly
mv serenity*.pdf pdf/songs/standards
for file in pdf/songs/standards/serenity*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

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
    \key ef \major 
    \tempo 4=152
    \time 4/4
    \partial 4. s4.
    \bar "[|:"
    \repeat volta 2 { 
        s1*14
        \bar ":|]"
    }
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4. 
    d1:m7.5- | g:aug7 | af2:maj7.11+ gf:maj7.11+ | e:m7 a:7 | 
    f2:m7 bf:7 | ef:maj7 d4:m7.5- g:7 | c2:m c:m7/bf | af:m7 df:7 | 
    g2:aug7 gf:7 | f1:7 | e:maj7 | f2:m7 bf:7 |
    ef1:maj7 | d2:m7.5- g:aug7 ||
}

melody = \relative c'' {
    g8 af [ g' ] ~ ||
    g2 ~ 8 f r ef ~ | 2 r8 g, c [ d  ] ~ | 4. c16 d c4 r8 bf | d g,2.. ~ | 
    \tuplet 3/2 { g4 af f } g4 r8 af8 | bf2 c4 << { d8 ef ~ | 1 | r4 } \\ { d8 ef ~ | 4. c8 ~ 4. cf8 ~ | 4 } >> r8 cf8 f ef df cf | 
    << { ef1 ~ | 2 } \\ { b4. bf8 ~ 4 a ~ | 2 } >> r8 ef' r ef ~ | 2 ~ 8 df cf bf ~ | 
    bf2 gf'8 df af d ~ | 1 | R1 ||  
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
            \new ChordNames \transpose ef ef { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new Staff = "lead" \transpose ef ef {
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
            \new ChordNames \transpose ef ef { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose ef ef {
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
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose ef ef { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose ef ef {
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
