\version "2.19.81"

titleLeft = "It Could Happen"
titleRight = "To You"
title = "It Could Happen To You"
composerName = "J. Van Heusen"
lyricistName = "J. Burke"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm it-could-happen-to-you*pdf
lilypond ly/songs/standards/it-could-happen-to-you*.ly
mv it-could-happen-to-you*.pdf pdf/songs/standards
for file in pdf/songs/standards/it-could-happen-to-you*pdf ; do open -a Preview $file ; done

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
    \key ef \major
    \startSection "A"
    s1*4 \break
    s1*4 \break 
    \bar "||"
    s1*4 \break
    s1*4 
    \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
    \startSection "B"
    s1*4 \break
    s1*4 \break 
    \bar "||"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1:maj7 | g2:m7.5- c:7.9- | f1:m7 | a2:m7.5- d:7.9- | 
    ef1:maj7 | af:7 | g:m7.5- | c:7.9- ||

    f1:m7 | df:7.11+ | ef:maj7 | d2:m7.5- g:7.9- |
    c2:m c:m7.7+ | c:m7 f:7 | f1:m7 | bf:7 ||

    ef1:maj7 | g2:m7.5- c:7.9- | f1:m7 | a2:m7.5- d:7.9- | 
    ef1:maj7 | af:7 | g:m7.5- | c:7.9- ||

    f1:m7 | df:7.11+ | ef2:maj7 af:7 | g2:m7.5- c:7 |
    f1:m | f2:m7 bf:7 | ef:6 c:m7 | f:m7 bf:7 ||
}

melodyForm = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.15) 

    bf2. c4 | df c8 g' ~ 2 | c,2. d4 | ef d8 a' ~ 2 | 
    bf2 2 | 4 af2 ef4 | g1 ~ | 2 r ||

    g2 4. 8 ~ | 4 af ef f | g4. 8 ~ 2 ~ | 2 r |
    ef2 4. 8 ~ | 4 f c d | ef2 f | c4. d8 ~ 2 ||

    bf2. c4 | df c8 g' ~ 2 | c,2. d4 | ef d8 a' ~ 2 | 
    bf2 2 | 4 af2 ef4 | g1 ~ | 2 r ||

    g2 2 | 4 af ef f | g d f ef8 bf'8 ~ | 1 |
    bf,2 2 | af'4 f2 g4 | ef1 | R1 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Hide your heart from sight,
    Lock your dreams at night,
    It could hap -- pen to you.
    Don't count stars
    Or you might stum -- ble,
    Some -- one drops a sigh
    And down you tum -- ble,

    Keep an eye on spring,
    Run when church bells ring.
    It could hap -- pen to you 
    All I did was won -- der 
    How your arms would be
    And it hap -- pened to me
}
lyricsHeadTwo = \lyricmode {
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
        poet = "Concert Pitch"
    }
    \score {
        <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
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
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
    }
    \score {
        \transpose bf, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
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
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
    }
    \score {
        \transpose ef, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
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
    }
}
