\version "2.19.83"

titleLeft = "Days Of Wine"
titleRight = "And Roses"
title = "Days Of Wine And Roses"
composerName = "H. Mancini"
lyricistName = "J. Mercer"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

https://www.youtube.com/watch?v=yZNo_cpsZIc

killPreview
rm days-of-wine-and-roses*.pdf
lilypond ly/songs/standards/days-of-wine-and-roses.ly 
mv days-of-wine-and-roses*.pdf pdf/songs/standards
for file in pdf/songs/standards/days-of-wine-and-roses*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #16

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

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureIntro = \relative c' { 
    \key f \major
    \time 4/4
    s1*12
}
structureForm = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \set Score.repeatCommands = #'(start-repeat)
    \bar "[|:"
    \mark \markup \box "A"
    s1*4 \break
    s1*4 \bar "||" 
    s1*8 \bar "||" \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -1.5 . 0 ) 
    \mark \markup \box "B"
    s1*8 \bar "||" 
    s1*4
    \set Score.repeatCommands = #(list (list 'volta voltaAllXButLast))
    s1*4 
    \set Score.repeatCommands = #(list (list 'volta #f) 'end-repeat (list 'volta voltaLast))
    \bar ":|]" \break
    s1*2 
    \set Score.repeatCommands = #'((volta #f)) 
    s1*6
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:maj7 | s | ef:7.11+ | s | 
    a1:m7 | d2:m d:m/c | b1:m7.5- | e:7.9+ |
    a2:m7 d:m7 | g:m7 c:7 | f1:6 | g2:m7 c:7  ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:maj7 | ef:7.11+ | a:1.3-.5.7.11 | d:7.9+ | 
    g1:m7 | s | ef:7.11+ | s | 
    a1:m7 | d:m7 | g:m7 | s2 g:m/f |
    e2:m7.5- a:7.9- | d:m7 g:7 | g1:m7/c | c:7.9- ||

    f1:maj7 | ef:7.11+ | a:1.3-.5.7.11 | d:7.9+ | 
    g1:m7 | s | ef:7.11+ | s | 
    a1:m7 | d2:m d:m/c | b1:m7.5- | e:7.9+ |
    a2:m7 d:m7 | g:m7 c:7 | f1:6 | g2:m7 c:7  ||

    a2:m7 d:m7 | g:m7 c:7 | a2:m7 d:m7 | g:m7 c:7 |
    a2:m7 d:m7 | g:m7 c:7 | ef1:maj7 | f:6 ||
}


melodyIntro = \relative c' { 
    \comp #16
    \comp #16
    \comp #15
    c4 
} 
melodyForm = \relative c'' { 
        a1 ~ | 4 g a c | d2 c ~ | 2 4 a | 
        a4 d,8 8 ~ 2 ~ | 4 r c' a | a df,8 8 ~ 2 ~ | 4 r a' g ||

        g4 c, d2 | g4 f a d | c2. bf4 | c bf r8 a4 g8 | 
        a2. e4 | g8 f4. e4 d | g1 ~ | 2 r4 c,4 ||

        a'1 ~ | 4 g a c | d2 c ~ | 4 r c a | 
        a4 d,8 8 ~ 2 ~ | 4 r c' a | a df,8 8 ~ 2 ~ | 4 r a' g ||

        g4 c, d4. e8 | f4 g a c | e1 ~ | 2. d4  | 
        c4 a g f | a4 2 d,4 | f1 ~ | 2 r ||

        c'4 a g f | a4 2 d4 | 
        c4 a g f | a4 2 d4 | 
        c4 a g f | a4 2 d,4 | f1 ~ | 1 ||
}

melodySong = \relative c'' { 
    \melodyIntro
    \melodyForm
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}

lyricsIntroSkip = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    The days of wine and ro -- ses 

    laugh and run a -- way 
    like a child at play. 

    Through the mead -- ow lands
    toward a clo -- sing door, 

    a door marked 'ne -- ver -- more'
    that was -- n't there be -- fore.

    The lone -- ly night dis -- clo -- ses

    just a pas -- sing breeze
    filled with mem -- or -- ies, 

    Of the gol -- den simle that 
    in -- tro -- duced me to 
    
    The days of wine and ro -- ses 
    and you.

    days of wine and ro -- ses 
    The days of wine and ro -- ses 
    The days of wine and ro -- ses 
    and you.

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
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
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
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
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
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
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

