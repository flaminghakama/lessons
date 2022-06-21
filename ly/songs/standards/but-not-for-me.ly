\version "2.19.83"

titleLeft = "But Not"
titleRight = "For Me"
title = "But Not For Me"
composerName = "G. Gershwin"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm but-not-for-me*.pdf
lilypond ly/songs/standards/but-not-for-me.ly 
mv but-not-for-me*.pdf pdf/songs/standards
for file in pdf/songs/standards/but-not-for-me*.pdf ; do op $file ; done

git add . ; git commit -m"fixing chord" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl


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
        s1*4 \break
        s1*4 \break

        \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
        \startSection "A"
        s1*4 \break
        s1*4 \break

        \startSection "B"
        s1*4 \break
        s1*4 \break

        \startSection "A"
        s1*4 \break
        s1*4 
    }
    \bar ":|]"
}

chordsA = \chordmode { 
    f2:maj7 g:m7 | a:7.9+ \tuplet 3/2 { c4:7 bf:7 af:7 } | 
    f2:7.9+ bf:7 | a:maj7 d:7.9+ |
    df2:maj7 bf:m7 | g:m7 c:7 |
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

lyricsVerse = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Old man sunshine, listen you
    Don't you tell me dreams come true
    Just try it, and I'll start a riot

    Beatrice Fairfax, don't you dare
    Ever tell me, he will care
    I'm certain, it's the final curtain

    I never wanna hear
    From any cheerful Pollyannas
    Who tell you Fate supplies a mate
    It's all bananas
}

lyricsChorusOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    They're writing songs of love
    But not for me
    A lucky star's above
    But not for me

    With love to lead the way
    I found more clouds of gray
    Than any Russian play
    Could guarantee

    I was a fool to fall
    And get that way
    Hi-ho, alas! and al-
    So, lack-a-day

    But still I can't dismiss
    The memory of his kiss
    I guess he's not for me

}

lyricsChorusTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    He's knocking on a door
    But not for me
    He'll plan a two by four
    But not for me

    I've heard that love's a game
    I'm puzzled just the same
    Was I the moth or flame
    I'm all at sea

    It started off so swell
    This "let's pretend"
    It all began so well
    But what an end

    The climax of a plot
    Should be a marriage knot
    But there's no knot for me
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
