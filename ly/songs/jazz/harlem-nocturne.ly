\version "2.19.81"

titleLeft = "Harlem"
titleRight = "Nocturne"
title = "Harlem Nocturne"
composerName = "E. Hagen"
lyricistName = "D. Rogers"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm harlem-nocturne*pdf
lilypond ly/songs/jazz/harlem-nocturne.ly
python ~/git/part-format/combine-1Page-1Page.py harlem-nocturne-for-C.pdf harlem-nocturne-for-Eb.pdf harlem-nocturne-for-C-and-Eb.pdf
mv harlem-nocturne-for-*-and-*.pdf pdf/songs/jazz/printable
mv harlem-nocturne*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/harlem-nocturne*pdf pdf/songs/jazz/printable/harlem-nocturne*pdf ; do open -a Preview $file ; done


%}



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
    \key g \minor
    s1 
    \repeat volta 2 { 
        \bar "[|:"
        s1*6
    }
    \alternative { 
        \relative c'' { 
            s1*2 
            \bar ":|]"
        }
        \relative c'' {
            s1*2
            \breakPart
        }
    }
    \repeat volta 2 { 
        \bar "[|:"
        s1*7
    }
    \alternative { 
        \relative c'' { 
            s1 
            \bar ":|]"
        }
        \relative c'' {
            s1
        }
    }
    s1*2 
    \bar "||"
    s1*4 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    g1:m7.7+ | g:m7 | c:m7 | s | 
    c1:m7.7+ | a2:7.9- ef4:7 d:7.9-
        g1:m6 | R1 | 
        g1:m6 | s2 f:7 ||

    bf2:7 f:m7 | bf:7 f:m7 | bf:7 f:m7 | bf1:7 | 
    ef2:7 bf:m7 | ef:7 bf:m7 | ef4:7 df:7 b:7 a:7 | 
        g4:9 f2.:7 | 
        g4:9 f:9 ef:9 df:9 | g1:m6 | R1 

    g1:m7.7+ | g:m7 | c:m7 | s | 
    c1:m7.7+ | a2:7.9- ef4:7 d:7.9- | g1:m6 | R1 |
}
chordsForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    g1:m7.7+ | g:m7 | c:m7 | s | 
    c1:m7.7+ | a2:7.9- ef4:7 d:7.9-
        g1:m6 | R1 | 
        g1:m6 | s2 f:7 ||

    bf2:7 f:m7 | bf:7 f:m7 | bf:7 f:m7 | bf1:7 | 
    ef2:7 bf:m7 | ef:7 bf:m7 | ef4:7 df:7 cf:7 bff:7 | 
        g4:9 f2.:7 | 
        g4:9 f:9 ef:9 df:9 | g1:m6 | R1 

    g1:m7.7+ | g:m7 | c:m7 | s | 
    c1:m7.7+ | a2:7.9- ef4:7 d:7.9- | g1:m6 | R1 |
}

melodyACommon = \relative c' { 
    r8 g d' [ g ] a4 bf8 fs ~ | 1 ~ | 8 g d bf g4 bf8 d ~ | 8 c2.. ~ |
    c8 8 g' c d4 ef8 b ~ | 1 ~ | 8 c \tuplet 3/2 { bf8 g ef } df4 a'8 g ~ | 
}
melodyB = \relative c'' { 
    c8 ||
    bf8 f g af ~ 4. c8 | bf f g af ~ 4. c8 | 
    bf8 f g af ~ 4 g8 f | d8 f4. ~ 4 r8 f'8 | 
    ef8 bf c df ~ 4. f8 | ef bf c df ~ 4. c8 | 
    f8 bf, ef af, df gf, b e, | 
        a8 d, g c, f16 e ef df  d f a c  |
        a8 d, g c, f bf, ef af, | d2. r4 |
}
melodyBForFlats = \relative c'' { 
    c8 ||
    bf8 f g af ~ 4. c8 | bf f g af ~ 4. c8 | 
    bf8 f g af ~ 4 g8 f | d8 f4. ~ 4 r8 f'8 | 
    ef8 bf c df ~ 4. f8 | ef bf c df ~ 4. c8 | 
    f8 bf, ef af, df gf, cf ff, | 
        a8 d, g c, f16 e ef df  d f a c  |
        a8 d, g c, f bf, ef af, | d2. r4 |
}
melodyALast = \relative c' { 
    r8 g d' [ g ] a4 bf8 fs ~ | 1 ~ | 8 g \tuplet 3/2 { d8 c bf } g4 bf8 d ~ | 8 c2.. ~ |
    c8 8 g' c d4 ef8 b ~ | 1 ~ | 8 c \tuplet 3/2 { bf8 g ef } df8 bf' a g ~ | 1 ~ | 2. r4 ||
}
melodyForm = \relative c' { 
    \melodyACommon
        \relative c'' { g1 | r8 g, d' [ g ] a4 bf8 fs\laissezVibrer }
        \relative c'' { g1 ~ | 2 r4 r8 }
    \melodyB
    \melodyALast
}
melodyForFlats = \relative c' { 
    \melodyACommon
        \relative c'' { g1 | r8 g, d' [ g ] a4 bf8 fs\laissezVibrer }
        \relative c'' { g1 ~ | 2 r4 r8 }
    \melodyBForFlats
    \melodyALast
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Deep mu -- sic fills the night
    Deep in the heart of Har -- lem
    And 'though the stars are bright 
    The dark -- ness is taun -- ting me.

    Oh, what a sad re -- frain
    \skip 1

    The mel -- o -- dy clings
    A -- round my heart strings
    It won't let me go when I'm lone -- ly 

    I hear it in dreams
    And some -- how it seems
    It makes me weep and I can't sleep
    \repeat unfold 12 { \skip 1 } 

    An
    through 
    \repeat unfold 8 { \skip 1 } 

    Then with the dawn it's gone
    The mel -- o -- dy lives for -- ev -- er
    For lone -- ly hearts to learn
    Of love in a Har -- lem Noc -- turne.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
 
    \repeat unfold 6 { \skip 1 }
    A noc -- turne born in Har -- lem
    That mel -- an -- cho -- ly strain
    For -- ev -- er is haun -- ting me.

    \repeat unfold 8 { \skip 1 }
    In -- di -- go tune
    It sings to the moon
    The lone -- some re -- frain of a lov -- er
    The mel -- o -- dy sighs
    It laughs and it cries
    A moan in blue that wails the long night 
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "   Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "   Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"                
                \chordsForFlats 
            }
            \new Staff = "voice" \keepWithTag #'(Part) \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForFlats
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb-large"
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"                
                \chordsForFlats 
            }
            \new Staff = "voice" \with {
                \magnifyStaff #(magstep 3)
            } \keepWithTag #'(Part) \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \easyHeadsOn
                    \melodyForFlats
                >>
            }
        >>
    }
}

