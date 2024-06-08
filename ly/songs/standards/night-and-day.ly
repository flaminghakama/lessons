\version "2.24.0"

titleLeft = "Night"
titleRight = "And Day"
titleFull = "Night And Day"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm night-and-day*pdf ; lilypond ly/songs/standards/night-and-day.ly ; for file in night-and-day*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/night-and-day*
lilypond ly/songs/standards/night-and-day.ly 
mv night-and-day*pdf pdf/songs/standards
for file in pdf/songs/standards/night-and-day*pdf ; do op $file ; done 

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

    \key c \major
    \time 2/2

    \partial 2
    s2

    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    s2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % \startSection "A"
    s1*4
    s1*4 
    % \startSection ""
    s1*4 
    s1*3
    s1 
    s1

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % \startSection "B"
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
    s2
    d1:m7.5- | g:7 | c:maj7 | s | 
    d1:m7.5- | g:7 | c:maj7 | s || 
    fs1:m7.5- | f:m7 | e:m7 | ef:dim7 | 
    d1:m7 | g:7 | c:maj7 | s || s2 bf:7 ||

    ef1:maj7 | s | c:maj7 | s | 
    ef1:maj7 | s | c:maj7 | s | 
    fs1:m7.5- | f:m7 | e:m7 | ef:dim7 | 
    d1:m7 | g:7 | c:maj7 | s ||
}
melody = \relative c'' { 
    \accidentalStyle default

    g4 8 8 ~ || 1 ~ | 2 \tuplet 3/2 { f4 e ds } | e1 ~ | 2 g4 8 8 ~ | 
    g4 4 4 4 | 4 f \tuplet 3/2 { f4 e ds } | e1 ~ | 2 4. 8 ||
    e4 4 4 8 ef ~ | 2 ~ 8 4 8 | d4 4 4 4 | 4 df8 c ~ 4 b |
    a4 af8 g ~ 2 ~ | 2 g'4 8 8 ~ | 1 ~ | 2 4 8 8\laissezVibrer || g2\repeatTie 4 4 ||

    bf1 ~ | 2 \tuplet 3/2 { g4 f ef } | g4 8 8 ~ 2 ~ | 2 4. 8 | 
    bf8 ( c4 ) bf8 c4 bf8 c ~ | 8 bf4 g8 ~ \tuplet 3/2 { g4 f ef } | g4 8 8 ~ 2 ~ | 2 e4. 8 ||
    e4 4 4 8 ef ~ | 2 ~ 8 4 8 | d4 4 4 4 | 8 df c b' ~ 8 bf a4 | 
    g4 8 8 ~ 2 ~ | 2 c4 8 8 ~ | 1 | R1 || 
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Night And Day, you are the one.
    On -- ly you be -- neath the moon and un -- der the sun.

    Whe -- ther near to me or far, it's no mat -- ter, darl -- ing,
    where you are.
    I think of you night and day.

    Day and night, 
    
    \repeat unfold 1 { \skip 1 }
 
    Night And Day,
    un -- der the hide of me, 
    
    there's an oh- -- so- -- hung -- ry year -- ning bur -- ning
    in -- side of me,
    
    and its tor -- ment won't be through
    'til you let me spend my life mak -- ing love to you,
    day and night, Night And Day.

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }

    why is it so, that this long -- ing for you
    fol -- lows where ev -- er I go?
    In the roar -- ing traf -- fic's boom, in the sil -- ence of my lone -- ly room,
    I think of you
    night and day.
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I Con -- cen -- trate On You.
    I con -- cen -- trate, and con -- cen -- trate on you.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-C-for-C"
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
  \bookOutputSuffix "in-C-for-Bb"
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
  \bookOutputSuffix "in-C-for-Eb"
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

