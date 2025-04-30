\version "2.24.0"

titleLeft = "Autumn"
titleRight = "Serenade"
titleFull = "Autumn Serenade"
composerName = "P. De Rose"
lyricistName = "S. Gallop"
arranger = ""
copyright = ""

%{

killPreview ; rm autumn-serenade*pdf ; lilypond ly/songs/standards/autumn-serenade.ly ; for file in autumn-serenade*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/autumn-serenade*
lilypond ly/songs/standards/autumn-serenade.ly 
mv autumn-serenade*pdf pdf/songs/standards
for file in pdf/songs/standards/autumn-serenade*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

    \key f \major
    \time 4/4

    \partial 2
    s2 

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection ""
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection ""
    s1*4 \break
    s1*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    s2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4
    s1*4

    % ""
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    c2:aug7

    f1:m7.7+ | s | bf:9 | s2 c:aug7 |
    f1:m7.7+ | s | bf:9 | g:m | 
    c1:9 | g2:m7 c:7 | f1:6 | d2:dim f | 
    a2:m7.5- d:7.9- | d:m7.5- g:7.9+ | g1:m | c2:7 c:aug7 ||

    f1:m7.7+ | s | bf:9 | s2 c:aug7 |
    f1:m7.7+ | s | bf:9 | g:m | 
    c1:9 | g2:m7 c:7 | f2:6 a:m7 | d1:9 | 
    d2:m7 g:13 | bf:m7 c:9 | f1 | s ||


}

melodyCommon = \relative c'' { 
    c4 gs ||
    e1 ~ | 8 f g e  f d e c | d1 ~ | 4 r c' gs | 
    e1 ~ | 8 f g e  f d e c | d1 ~ | 4 r e f | 
    \tuplet 3/2 { g4 4 4 } 4 a | \tuplet 3/2 { bf4 4 4 } 4 c | 
}
melodyAEnding = \relative c'' { 
    d1 ~ | 4 r c d |
    \tuplet 3/2 { ef4 4 4 } 4 d | \tuplet 3/2 { bf4 4 4 } 4 a | d1 ~ | 4 r 
}
melodyBEnding = \relative c'' { 
    \tuplet 3/2 { d4 4 4 } e2 ~ | 4 r e d | a a e' e | af, af d d, | 
    f1 ~ | 2 r ||
}


melody = \relative c'' { 
    \accidentalStyle default
    \melodyCommon
    \melodyAEnding
    \melodyCommon
    \melodyBEnding
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Through the trees 
    comes au -- tumn with her ser -- e -- nade

    Mel -- o -- dies 
    the sweet -- est mu -- sic e -- ver played

    Au -- tumn kis -- ses we knew are 
    beau -- ti -- ful sou -- ven -- irs

    As I pause to re -- call the 
    leaves seem to fall like tears


    Sil -- ver stars 
    were cling -- ing to an au -- tumn sky

    Love was ours 
    un -- til Oc -- to -- ber wan -- dered by

    Let the years come and go
    I'll still feel the glow that 
    time can -- not fade

    When I hear that love -- ly au -- tumn ser -- e -- nade
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
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
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(original key)"
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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
  \bookOutputSuffix "in-F-for-Bb"
    \header {
        subtitle = "(original key)"
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
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
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        subtitle = "(original key)"
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
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
