\version "2.19.83"

titleLeft = "Three Little"
titleRight = "Words"
title = "Three Little Words"
composerName = "H. Ruby"
lyricistName = "B. Kalamar"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm pdf/songs/standards/three-little-words*
lilypond ly/songs/standards/three-little-words.ly 
mv three-little-words*pdf pdf/songs/standards
for file in pdf/songs/standards/three-little-words*pdf ; do op $file ; done 

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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
    \tempo "Swing"

    \bar "[|:"
    \startSectionNoBarline "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar ":|]"    
}


chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | s | s | ef2:m7 af:9 | 
    d1:m7 | g:7 | e2:m7 a:7 | d:m7 g:7 |

    c1 | s | s | ef2:m7 af:9 | 
    d1:m7 | g:7 | c:6 | s |

    g1:m7 | s | c:1.4.5.7.9 | c:7 |         
    f1:maj13 | s | bf2:7 a:7 | af:7 g:7 |

    c1 | s | s | ef2:m7 af:9 | 
    d1:m7 | g:13 | c:6 | d2:m7 g:7 |

}
chordsSong = \chordmode { 
    \chordsForm
}

melodyHead = \relative c'' { 
    c4 g a e ~ | 1 | r4 g a g | bf4 2 af4 | 
    g4 e f d ~ | 1 | r2 g | a b |

    c4 g a e ~ | 1 | r4 g a g | bf4 2 af4 | 
    g4 e f d ~ | 1 | r2 g | a b |

    c4 a bf g ~ | 4 a bf c | d1 | e, | 
    a4 e f d ~ | 4 e f g | af2 a | c b | 

    c4 g a e ~ | 1 | r4 g a g | bf4 2 af4 | 
    g4 e f d' ~ | 2 e  | c1 | R1 |
}
melodySong = \relative c' { 
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Three lit -- tle words, 
    Oh, what I'd give for that 
    won -- der -- ful phrase, 
    To hear those 

    three lit -- tle words, 
    That's all I'd live for 
    the rest of myi days.

    And what I 
    feel in my heart 
    they tell sin -- cere -- ly, 
    No oth -- er words 
    can tell it half so clear -- ly.

    Three lit -- tle words,
    Eight lit -- tle let -- ters 
    which sim -- ply mean \markup "\"I" love \markup "you.\""
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}


\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
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
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

