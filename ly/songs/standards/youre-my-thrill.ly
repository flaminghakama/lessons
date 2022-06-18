\version "2.19.83"

titleLeft = "You're"
titleRight = "My Thrill"
title = "You're My Thrill"
composerName = "J. Gorney & S. Clare"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm youre-my-thrill*.pdf
lilypond ly/songs/standards/youre-my-thrill.ly 
mv youre-my-thrill*.pdf pdf/songs/standards
for file in pdf/songs/standards/youre-my-thrill*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

structure = \relative c' { 

    \key d \minor

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*8
    }
    \bar ":|]" \break

    \startSectionNoBarline "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:7 | g:m7 | a:7 | e2:m7.5- a:7.9- | 
    c1:m7.13 | d:7.13- | g2:7 ef:7 | d:m bf:7 ||

    d1:7 | a2:m7.5- d:7.9- | g1:m | s | 
    e1:7 | b2:m7 e:7 | a1 | bf:7 ||

    a1:7 | g:m7 | a:7 | e2:m7.5- a:7.9- | 
    c1:m7.13 | d:7.13- | g2:7 ef:7 | d:m bf:7 |
    d1:m | e2:m7.5- a:7 | d1:maj7 | s ||
}

melodyA = \relative c'' { 
    a2. e4 | bf'1 | a4 g ds e | bf' a2. | 
    a4 g ef g | bf a2. | d,8. 16 8. 16 f4 f | d4 4 f2 | 
}
melodyB = \relative c' {
    d1 \glissando | c' | c4 bf cs, d | c' bf2. | 
    e,1 \glissando | d' | d4 cs gs a8 8 | c4 bf c bf ||
}
melodyCoda = \relative c'' {
    d1 | 1 | 1 ~ | 1 ||
}

melodyForm = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyCoda
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You're my thrill
    You do some -- thing to me 
    you send chills right through me
    when I look at you 'cause you're my thrill

    Hm -- mmm  Noth -- ing seems to mat -- ter
    Hm -- mmm  Here's my heart on a sil -- ver plat -- ter.

    Where's my will?
    Why this strange de -- si -- re
    that keeps mount -- ing high -- er?

    When I look at you I can't keep still.

    You're my thrill!
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 3 { \skip 1 }
    how my pulse in -- crea -- ses 
    I just go to pie -- ces
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
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
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
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
        \layout { 
            indent = 1.25\cm
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
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
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
        \layout { 
            indent = 1.25\cm
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
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
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
        \layout { 
            indent = 1.25\cm
        }
    }
}
