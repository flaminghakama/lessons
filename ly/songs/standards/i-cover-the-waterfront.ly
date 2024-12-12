\version "2.24.0"

titleLeft = "I Cover The"
titleRight = "Waterfront"
titleFull = "I Cover The Waterfront"
composerName = "J. Green"
lyricistName = "E. Heyman"
arranger = ""
copyright = ""

%{

killPreview ; rm i-cover-the-waterfront*pdf ; lilypond ly/songs/standards/i-cover-the-waterfront.ly ; for file in i-cover-the-waterfront*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/i-cover-the-waterfront*
lilypond ly/songs/standards/i-cover-the-waterfront.ly 
mv i-cover-the-waterfront*pdf pdf/songs/standards
for file in pdf/songs/standards/i-cover-the-waterfront*pdf ; do op $file ; done 

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

    \key g \major
    \time 4/4

    \startSection "A"

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
    s1*4 \break

    \bar "|."

}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
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

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 bf:dim7 | 
    a1:m7 | d:7 | g2 fs:7 | f:7 e:7 ||

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 bf:dim7 | 
    a1:m7 | d:7 | g2 c:7 | g:6 e:m7 ||

    a2:m7 d:7 | b:m7 e:7 | a:m7 d:7 | g1 |
    b2:m7 e:7 | a fs:m7 | b:m7 e:7 | a4:m7 a:m7/g fs:m7.5- b:7 ||

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 bf:dim7 | 
    a1:m7 | d:7 | g2 af:maj7 | g1 ||
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 as:dim7 | 
    a1:m7 | d:7 | g2 fs:7 | es:7 e:7 ||

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 as:dim7 | 
    a1:m7 | d:7 | g2 c:7 | g:6 e:m7 ||

    a2:m7 d:7 | b:m7 e:7 | a:m7 d:7 | g1 |
    b2:m7 e:7 | a fs:m7 | b:m7 e:7 | a4:m7 a:m7/g fs:m7.5- b:7 ||

    e2:m7 a:7 | a:m7 d:7 | g a:m7 | b:m7 as:dim7 | 
    a1:m7 | d:7 | g2 gs:maj7 | g1 ||
}

melody = \relative c'' { 
    \accidentalStyle default

    r4 b \tuplet 3/2 { a4 g a } | b4 8 8 ~ 2 | r4 d \tuplet 3/2 { d4 b g } | fs2. e8 fs | 
    g8 4 8 ~ 4. a8 | b8 4 8 ~ 4 a | d1 ~ | 1 ||

    r4 b \tuplet 3/2 { a4 g a } | b4 8 8 ~ 2 | r4 d \tuplet 3/2 { d4 b g } | fs2. e8 fs | 
    g8 4 8 ~ 4. a8 | b8 4 8 ~ 4 a | g1 ~ | 4 r r2 ||

    d'4 8 8 ~ 2 | \tuplet 3/2 { d,4 4 ds } e8 4. | \tuplet 3/2 { d'4 4 4 } 8 4. | \tuplet 3/2 { d,4 4 ds } e2 |
    e'4 8 8 ~ 2 | \tuplet 3/2 { e,4 4 es } fs8 4. | \tuplet 3/2 { e'4 4 4 } cs8 4. | \tuplet 3/2 { c4 4 4 } a2 ||

    r4 b \tuplet 3/2 { a4 g a } | b4 8 8 ~ 2 | r4 d \tuplet 3/2 { d4 b g } | fs2. e8 fs | 
    g8 4 8 ~ 4. a8 | b8 4 8 ~ 4 a | g1 ~ | 4 r r2 ||
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I Cov -- er the Wat -- er -- front, 
    I'm watch -- ing the sea, 
    will the one I love be com -- ing back to me?

    I Cov -- er the Wat -- er -- front, 
    in search of my love,
    and I'm cov -- ered by a star -- less sky a -- bove.

    Here I am pa -- tient -- ly wait -- ing 
    hop -- ing and long -- ing, 
    Oh! how I yearn! 
    Where are you?  Are you for -- get -- ting? 
    Do you re -- mem -- ber? 
    Will you re -- turn?  

    I Cov -- er the Wat -- er -- front, 
    I'm watch -- ing the sea, 
    for the one I love must soon come back to me.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 10 { \skip 1 }
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
  \bookOutputSuffix "in-G-for-C"
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
  \bookOutputSuffix "in-G-for-Bb"
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
  \bookOutputSuffix "in-G-for-Eb"
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



\book {
  \bookOutputSuffix "in-E-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose g e <<
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
  \bookOutputSuffix "in-E-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose g ff \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
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
  \bookOutputSuffix "in-E-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose g ff \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
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

