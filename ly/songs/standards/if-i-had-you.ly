\version "2.19.83"

\include "english.ly"

titleLeft = "If I"
titleRight = "Had You"
title = "If I Had You"
composerName = "J. Campbell, R. Connelly & T. Shapiro"
lyricistName = "J. Campbell, R. Connelly & T. Shapiro"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm pdf/songs/standards/if-i-had-you*
lilypond ly/songs/standards/if-i-had-you.ly 
mv if-i-had-you*pdf pdf/songs/standards
for file in pdf/songs/standards/if-i-had-you*pdf ; do op $file ; done 

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

    ragged-last = ##f
    ragged-right = ##f
    ragged-right-last = ##f

    #(define fonts
        (make-pango-font-tree "Marker Felt" 
            "Highlander ITC TT" 
            "LilyJAZZText"
            (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -5 . 0 )

    \key bf \major
    \tempo "Ballad"

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . 2 )
    \startSectionNoBarline "A"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break

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
    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f2:9 f:aug7 | bf/d df:dim7 | c:m7 f:7 ||

    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f2:9 f:aug7 | bf1 | e2:m7.5- a:7.9- ||

    d1:m | e2:m7.5- a:7.9- | d1:m | e2:m7.5- a:7.9- |
    d1:m | e2:m7.5- a:7.9- | d1:m | c2:m7 ef4/f f:7 |

    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f1:9 | bf | s ||
}
chordsSong = \chordmode { 
    \chordsForm
}

melodyHead = \relative c' { 
    d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 a8 4 af8 | g1 ~ | 2 r ||

    d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 8 f g4 | bf1 ~ | 2 r ||

    d8 e d e d4 a | bf4 2. | a8 bf a bf a4 f | e1 | 
    d'8 e d e d4 a | bf4 2. | a8 bf a bf a4 f | ef1 | 

    d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 8 f g4 | bf1 ~ | 2 r ||
}
melodySong = \relative c' { 
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    I could show the world how to smile
    I could be glad all of the while
    I could change the grey skies to blues
    If I had you

    I could leave the old days be -- hind
    Leave all my pals, I'd ne -- ver mind
    I could start my life all a new
    If I had you

    I could climb the snow capped moun -- tains
    Sail the migh -- ty o -- cean wide
    I could cross the bur -- ning de -- sert
    If I had you by my side

    I could be a king, dear, un -- crowned
    Hum -- ble or poor, rich or re -- nowned
    There is not -- hing I could -- n't do
    If I had you
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
