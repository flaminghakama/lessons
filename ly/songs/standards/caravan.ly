\version "2.19.81"

titleLeft = "Cara"
titleRight = "van"
title = "Caravan"
composerName = "J. Tizol & E. K. 'D'. Ellington"
lyricistName = "J. Tizol & E. K. 'D'. Ellington"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm caravan*pdf
lilypond ly/songs/standards/caravan*.ly
mv caravan*.pdf pdf/songs/standards
for file in pdf/songs/standards/caravan*pdf ; do open -a Preview $file ; done

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key f \minor
    \repeat volta 2 { 
        \bar "[|:"
        \startSectionNoBarline "A"
        s1*6 \break
        s1*6 \break
        s1*4 
    }
    \bar ":|]" 
    \break
    \startSectionNoBarline "B"
    s1*8 \break
    s1*8
    \break
    \startSection "A"
    s1*6 \break
    s1*6 \break
    s1*4 
    \bar "|."
}

chordsReal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:dim7 | s | s | s | 
    g1:dim7 | s | s | s | 
    g1:dim7 | s | s | s | 
    f1:m | s | s | s ||

    f1:7 | s | gf:dim7 | f:7 | 
    bf1:7 | s | f:m7 | bf:7 |
    ef1:7 | s | s | s2 ef2:7.9- |
    af1:6 | s | g:7.9+ | s ||

    g1:dim7 | s | s | s | 
    g1:dim7 | s | s | s | 
    g1:dim7 | s | s | s | 
    f1:m | s | s | s ||
}
chordsChuck = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:7.9- | s | s | s | 
    c1:7.9- | s | s | s | 
    c1:7.9- | s | s | s | 
    f1:m | s | s | s ||

    f1:9 | s | s | s | 
    bf1:9 | s | s | s |
    ef1:9 | s | s | s |
    af1 | s | g:7 | df:7.11+ ||

    c1:7.9- | s | s | s | 
    c1:7.9- | s | s | s | 
    c1:7.9- | s | s | s | 
    f1:m | s | s | s ||
}

verseRealBook = \relative c'' { 
    c1 ~ | \noBreak 1 | r4 df c g | bf c e g, | 
    bf1 ~ | \noBreak 1 | r4 c df c | df c b e, | 
    bf'1 ~ | \noBreak 1 | r4 c b bf | a af gf e | 
    \stemDown
    f1 ~ | \noBreak 1 ~ | \noBreak 1 ~ | \noBreak 2 r ||
    \stemNeutral
}
verseChuck = \relative c'' { 
    c1 ~ | \noBreak 1 | r4 df c g | bf c e g, | 
    bf1 ~ | \noBreak 1 | r4 c df c | df c b e, | 
    bf'1 ~ | \noBreak 1 | r4 c b bf | a af g gf | 
    \stemDown
    f1 ~ | \noBreak 1 ~ | \noBreak 1 ~ | \noBreak 2 r ||
    \stemNeutral
}

bridgeRealBook = \relative c'' { 
    f1 ~ | \noBreak 4 gf f c | ef1 | df | 
    f1 ~ | \noBreak 4 g f c | ef1 | d | 
    ef1 ~ | \noBreak 4 f ef c | bf1 | f'2 e |
    ef2. f,4 ~ | \noBreak 4 g af bf | c1 ~ | \noBreak 2 r |
}
bridgeColorado = \relative c'' { 
    f1 | d2 c | g1 ~ | \noBreak 2 f | 
    c'1 | g2 f | c1 ~ | \noBreak 1 |
    ef'1 | c2 bf | f1 ~ | \noBreak 2 ef4 f | 
    af1 ~ | \noBreak 2 c | g1 ~ | \noBreak 2 r ||
}
bridgeChuck = \relative c'' { 
    f1 | d2 c4. g8 ~ | \noBreak 1 ~ | \noBreak 4. f8 e4 f | 
    c'1 | g2 f4. c8 ~ | \noBreak 1 | r2 bf'8 c df d |
    ef1 | c2 bf4. f8 ~ | \noBreak 1 ~ | \noBreak 2 g4 ef  | 
    c'4. af8 ~ 2 ~ | \noBreak 2 bf4 af | g2 4. 8 ~ | \noBreak 2 r ||
}

melodyRealBook = \relative c'' { 
    \verseRealBook
    \bridgeRealBook
    \verseRealBook
}
melodyChuck = \relative c'' { 
    \verseChuck
    \bridgeChuck
    \verseChuck
}

lick = \relative c'' { 
    s1*12 
    \stemUp
    d2\rest ef8 d r ef | d2 c4 d | ef8 d r ef d2 ~ | \noBreak 2 s |  
    s1*16
    s1*12 
    d2\rest ef8 d r ef | d2 c4 d | ef8 d r ef d2 ~ | \noBreak 2 s |  
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Night and stars a -- bove that shine so bright
    The mys -- tery of their fad -- ing light
    That shines u -- pon our Ca -- ra -- van

    This is so ex -- ci -- ting, 
    You are so in -- vi -- ting
    Res -- ting in my arms
    Thrill to the ma -- gic of your charms

    You be -- side me here be -- neath the blue
    My dream of love is com -- ing true
    With -- in our de -- sert Ca -- ra -- van
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Sleep u -- pon my shoul -- der as we creep
    A -- cross the sands so I may keep
    The mem -- ory of our Ca -- ra -- van
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
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  {
                \include "ly/ily/chord-names-properties.ily"
                \chordsReal 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyRealBook
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
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
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                
                \chordsChuck 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyChuck
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
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
        subtitle = ""
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { \chordsReal }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyRealBook
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
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
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { \chordsChuck }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyChuck
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
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
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { \chordsReal }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyRealBook
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
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
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { \chordsChuck }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structure
                        \melodyChuck
                    >>
                    \new Voice = "original" \voiceTwo <<
                        \lick
                    >>
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}