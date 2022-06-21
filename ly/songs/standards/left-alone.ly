\version "2.19.83"

titleLeft = "Left"
titleRight = "Alone"
title = "Left Alone"
composerName = "M. Waldron & B. Holiday"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm left-alone*.pdf
lilypond ly/songs/standards/left-alone.ly 
mv left-alone*.pdf pdf/songs/standards
for file in pdf/songs/standards/left-alone*.pdf ; do op $file ; done

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

    \key f \major

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \partial 4*1 s4 

    \startSectionNoBarline "A"
    \repeat volta 2 { 
    \bar "[|:"
        s1*6 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 }
    }

    \startSection "B"
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsA = \chordmode { 
    a2:m b4:m7 e:aug7.5- | c2:13.11+ f:maj7 | 
    b2:
}

chordsB = \chordmode { 
    bf2:m7 ef:7 | df:maj7 gf:7 |
    af2:maj7 df:maj7 | c:m7 b:7 |
    bf2:m7 df:7.11+ | gf:7 b:9 | 
    e2:aug7 a:7.9+ | d:7 g4:m7 c:7 || 
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4 
    \chordsA 
    f2 d:m7 | a4:7.9+ d:13 g:7.9+ c:13 || 
    \chordsA 
    gf2:maj7 e:7.9- | f1:maj7 ||
    \chordsB
    \chordsA
    gf2:maj7 e:7.9- | f1:maj7 ||
}

melodyA = \relative c' { 
    c4 || c' a2. | r4 bf8 c \tuplet 3/2 { e4 d c } | 
    af1 | r4 g8 af c4 bf8 af | 
    f2 2 | 4 4 \tuplet 3/2 { e4 f g } | 
}
melodyB = \relative c' {
    f4 || f'2 2 ~ | 4 4 \tuplet 3/2 { f4 ef df } | 
    ef4. 8 af2 | r4 ef4 \tuplet 3/2 { ef4 df c } | 
    df4. 8 g2 | r4 df4 \tuplet 3/2 { df4 c bf } | 
    c1 ~ | 2 r4 
}
melodyForm = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \relative c'' { a1 ~ | 2 r4 } 
    \melodyA
    \relative c' { f1 | r2 r4 } 
    \melodyB
    \melodyA
    \relative c' { f1 | R1 } 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Fla -- min -- go, like a flame in the sky
    Fly -- ing o -- ver the is -- land
    To my lo -- ver near -- by

    Fla -- min -- go, with your tro -- pi -- cal hue
    For it's you I re -- ly on
    And the love that is true

    The wind sings a song to you as you go
    The song that I hear be -- low
    The mur -- mur -- ing heart

    Fla -- min -- go, when the sun meets the sea
    Say fare -- well to my lo -- ver
    And has -- ten to me
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

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
        subtitle = "(Charles Mingus changes)"
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
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = "(Charles Mingus changes)"
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
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = "(Charles Mingus changes)"
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
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}
