\version "2.19.81"

titleLeft = "You'll Never"
titleRight = "Walk Alone"
title = "You'll Never Walk Alone"
composerName = "R. Rodgers"
lyricistName = "O. Hammerstein II"
copyright = \markup { \tiny "copyright © 2020 Elaine Paul Alt" } 

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm youll-never-walk-alone*pdf
lilypond ly/songs/youll-never-walk-alone.ly
op youll-never-walk-alone-for-C.pdf
python ~/git/part-format/combine-1Page-1Page.py youll-never-walk-alone-for-C.pdf youll-never-walk-alone-for-Eb.pdf youll-never-walk-alone-for-C-and-Eb.pdf
mv youll-never-walk-alone-for-C.pdf  pdf/songs
mv youll-never-walk-alone-for-Eb.pdf pdf/songs
mv youll-never-walk-alone-for-C-and-Eb.pdf pdf/songs/printable

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

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key c \major
    s1*2 
    \repeat volta 2 { 
        \bar "[|:"
        s1*8
        s1*26
    }
    \alternative { 
        \relative c'' { 
            s1*2 
            \bar ":|]"
        }
        \relative c'' {
            s1*2
            \bar "|."
        }
    }
}

chordsForm = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | s ||
    c1 | s | g | s | 
    f1 | c | g | g:m | 
    d1:m | bf | f | d:m |
    bf2 a:m | g:m f | e1 | c:7 |

    f1 | b:dim7 | c | f:m6 | 
    c1 | e:m | f | g2:m c:7 | 
    c1 | c:aug | f | d:7 | 
    c2 c:aug | f:maj7 fs:7.5- | e1:m | 
    s2 g:7 | c c:aug | f g:9 | 

    c2 e:m | f:maj7 f | 
    f2 d4:m e:m | c1 |
}
melody = \relative c' { 
    R1 | r2 c4 c ||
    c2 e4 d | c2 e4 f | g2 d | d2. 4 | \break
    f2 g4 f | e2 g4 e | d1 ~ | 2 4 e |
    f2 d4 4 | 2 4 f | \break a2 f | 2 g4 a |
    bf2 a4 c | g2 f4 c' | e,1 ~ | 2 2 | \break
    a2 g4 a | b2. 4 | c2 b4 c | d2 c4 d |
    e2 c | g e | \break a1 ~ | 2 b |
    c2 2 | 2 2 | 2 b4 c | d2 c4 d | \break
    e2 2 | 2 2 | 1 ~ | 2 d |
    g2 e | c a | \break

        g1 ~ | 2 c,4 4 ||
        g'1 ~ | 2 ~ \fermata g4 r  

}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    When you walk through a storm,
    hold your head up high     
    And don't be a -- fraid of the dark,
    at the end of the storm is 
    the gol -- den sky
    And the sweet sil -- ver song of a lark.

    Walk on through the wind,
    walk on through the rain,
    Tho' your dreams be tossed and blown.

    Walk on, walk on, walk large in your heart, 
    and you'll ne -- ver walk a -- lone.
    You'll ne -- ver walk a -- lone.

    When you 

    lone!
    
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
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsForm }
            \new Staff = "voice" \with {
                \magnifyStaff #(magstep 3)
            } \keepWithTag #'(Part) \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \easyHeadsOn
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-A"
    \header {
        subtitle = ""
        poet = "Instruments in A"
    }
    \score {
        <<
            \new ChordNames \transpose a c  { \chordsForm }
            \new Staff = "voice" \keepWithTag #'(Part) \transpose a, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}
