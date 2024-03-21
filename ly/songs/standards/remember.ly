\version "2.24.0"

titleLeft = "Remember"
titleRight = ""
titleFull = "Remember"
composerName = "I. Berlin"
lyricistName = "I. Berlin"
arranger = ""
copyright = ""

%{

killPreview ; rm remember*pdf ; lilypond ly/songs/standards/remember.ly ; for file in remember*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/remember*
lilypond ly/songs/standards/remember.ly 
mv remember*pdf pdf/songs/standards
for file in pdf/songs/standards/remember*pdf ; do op $file ; done 

git add . ; git commit -m"fixing wrong notes" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \key f \major
    \tempo 4=220
    \time 3/4
    \partial 8 
    s8
    \startSection "A"
    \startRepeat
    s2.*4 \break
    s2.*4 \break

    \startSection "A"
    s2.*4 \break
    s2.*4 \break

    \startSection "B"
    s2.*4 \break
    s2.*4 \break

    \startSection "A"
    s2.*4 \break
    s2.*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )
    s8
    \once \override Score.RehearsalMark.extra-offset = #'( 2 . 3 )
    %  "A"
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "A"
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "A"

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
    s8 ||
    bf2. | f:aug | bf | f:aug | 
    bf2. | c:7.9- | f | s | 

    bf2. | f:aug | bf | f:aug | 
    bf2. | c:7.9- | f | f:7 | 

    bf2. | s | s | g:m7.5- |
    f2./c | a:m | g:m/bf | a:aug |

    bf2. | f:aug | bf | g:9 | 
    c2. | s | f | s | 
}


melody = \relative c' { 
    \accidentalStyle default
    c8 || 
    d4 f4. d8 | a'2 ~ 8 g | f2 ~ 8 d | a'2 ~ 8 f |
    d2. | df2 ~ 8 c | a'4 c2 ~ | 2 r8 c,8 |    

    d4 f4. d8 | a'2 ~ 8 g | f2 ~ 8 d | a'2 ~ 8 f |
    d2. | df2 ~ 8 c | a'4 c2 ~ | 2 r8 c8 |

    d4 f4. d8 | f2 ~ 8 bf, | d2 ~ 8 f, | bf2 ~ 8 g | 
    a4 c4. a8 | c2 ~ 8 a | g2 ~ 8 e | a2 f4 | 

    d4 f4. d8 | a'2 ~ 8 g | f2 ~ 8 d | a'2 ~ 8 f |
    d2 c4 | g'2 a8 bf | a4 f2 ~ | 2. || 
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Re -- mem -- ber the night, 
    the night you said, 
    "\"I" love "you,\"" 
    re -- mem -- ber?

    Re -- mem -- ber you vowed
    by all the stars a -- bove you, 
    re -- mem -- ber?

    Re -- mem -- ber we found 
    a lone -- ly spot, 
    and af -- ter I learned to care a lot, 

    you prom -- ised that you'll 
    for -- get me not.

    But you for -- got 
    to re -- mem -- ber.

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
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(fake book key)"
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
        subtitle = "(fake book key)"
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
        subtitle = "(fake book key)"
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
