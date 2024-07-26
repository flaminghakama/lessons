\version "2.24.0"

titleLeft = "Love For"
titleRight = "Sale"
titleFull = "Love For Sale"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm love-for-sale*pdf ; lilypond ly/songs/standards/love-for-sale.ly ; for file in love-for-sale*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/love-for-sale*
lilypond ly/songs/standards/love-for-sale.ly 
mv love-for-sale*pdf pdf/songs/standards
for file in pdf/songs/standards/love-for-sale*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chords" ; git push 
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
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #0

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
    \time 4/4

    \startSection "A"
    s1*8
    s1*8 \break

    \startSection "A"
    s1*8 
    s1*8 \break

    \startSection "B"
    s1*8 
    s1*8 \break

    \startSection "A"
    s1*11 
    s2.. \toCoda s8
    s1*4
    \bar "||"
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*4 \break 
    s1*4 \break 
    s1*4
    \bar "|."    
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    %\startSection "A"
    s1*8
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    %\startSection "A"
    s1*8 
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    %\startSection "B"
    s1*8 
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    %\startSection "A"

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
    ef1:7 | s | bf:m | s | ef:7 | s | bf:m | s | 
    ef1:m7 | af:7 | df:7 | gf:7 | c:m7.5- | f:aug7 | bf:m | s ||

    ef1:7 | s | bf:m | s | ef:7 | s | bf:m | s | 
    ef1:m7 | af:7 | df:7 | gf:7 | c:m7.5- | f:aug7 | bf:m | bf:m7 ||

    ef1:m7 | af:7 | df2:maj7 ef:m7 | f:m7.5- bf:7 | 
    ef1:m7 | af:7 | df2:maj7 ef:m7 | df:maj7/f bf:m7 | 
    bf1:7 | b2:7 bf:7 | ef1:m | c:m7.5- | 
    g2:m7.5- c:7 | g:m7.5- c:7 | fs2:m7 b:7 | f:m7.5- bf:7.9- ||

    ef1:7 | s | bf:m | s | ef:7 | s | bf:m | s | 
    ef1:m7 | af:7 | df:7 | gf:7 | c:m7.5- | f:aug7 | bf:m | s ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    c:m7.5- | f:aug7 | bf:m | bf:m7/af |
    g2:m7.5- g:m7.5-/f | ef1:7 | ef2:m7 ef:m7/df | c:m7.5- f:aug7 | 
    bf1:m | ef:7 | bf | s ||
}

chordsSongVolThree = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    ef1:maj7 | s | bf:m7.7+ | s | ef:7 | s | bf:m7.7+ | s | 
    ef1:m7 | ef2:m7 d:7 | df1 | df2:m7 gf:7 | c1:m7.5- | b:7 | bf:m | s ||

    ef1:maj7 | s | bf:maj7 | s | ef:7 | s | bf:maj7 | s | 
    ef1:m7 | ef2:m7 d:7 | df1 | df2:m7 gf:7 | c1:m7.5- | b:7 | bf:m | bf:m6 ||

    ef1:m7 | af:7 | df2:maj7 ef:m7 | f2:m7.5- e:7 | 
    ef1:m7 | af:7 | df2:maj7 ef:m7 | f:m7 gf:maj7 | 
    f2:m7 bf:7 | b:7 bf:7 | ef1:m6 | ef:m7 | 
    g2:m7.5- c:7 | g2:m7.5- c:7 | fs:m7 b:7 | f:m7.5-  e:7 ||

    ef1:maj7 | s | bf:m7.7+ | s | ef:7 | s | bf:maj7 | s | 
    ef1 | ef2:m7 d:7 | df1 | df2:m7 gf:7 | c1:m7.5- | b:7 | bf:m | s ||
}

melody = \relative c'' { 
    \accidentalStyle default

    bf1 ~ | 2. g4 | f1 ~ | 1 | r4 bf8 8 4 4 | 4 2 g4 | f1 ~ | 2 r | 
    r4 bf8 8 4 4 | 4 c4 2 | r4 af8 8 4 4 | af4 gf4 2 | f1 ~ | 2. df4 | bf1 ~ | 2 r ||

    bf'1 ~ | 2. g4 | f1 ~ | 1 | r4 bf8 8 4 4 | ef4 c bf g | f1 ~ | 2 r | 
    r4 bf8 8 4 4 | 4 c4 2 | r4 df8 8 4 4 | df4 gf,4 2 | f1 ~ | 2. df4 | bf1 ~ | 2 r ||

    r4 bf8 c df4 ef | f ef4 2 | r4 c8 df ef4 f | af1 |
    r4 bf,8 c df4 ef | f ef4 2 | r4 c8 df ef4 f | bf1 |
    r4 bf,8 c d4 f | gf f4 2 | r4 d \tuplet 3/2 { ef4 f gf } | c4 bf4 2 | 
    df2 c | df c | r4 b8 8 4 4 | 2 bf ||

    bf1 ~ | 2. g4 | f1 ~ | 1 | r4 bf8 8 4 4 | 4 2 g4 | f1 ~ | 2 r | 
    r4 bf8 8 4 4 | 4 c4 2 | r4 df8 8 4 4 | df4 ef4 2  | f1 ~ | 2. df4 | bf1 ~ | 2 r |
}
melodyCoda = \relative c'' { 
    \accidentalStyle default
    f1 ~ | 2. df4 | bf1 ~ | 2 r |
    f'1 ( ~ | 2 ~ 8 df bf g | bf c df ef f4 4 | 2. ) df4 | bf1 ~ | 1 ~ | 1 ~ | 4 r r2 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Love For Sale,
    Ap -- pe -- ti -- zing, young Love For Sale.

    Love that's fresh and still un -- spoiled
    love that's on -- ly slight -- ly soiled,
    Love For Sale.

    Who will buy?
    Who would like to sam -- ple my sup -- ply?

    Who's pre -- pared to pay the price
    for a trip to par -- a -- dise?
    Love For Sale.

    Let the po -- ets pipe of love
    in their child -- ish way.

    I know ev -- 'ry type of love
    bet -- ter far than, they.

    If you want the thrill of love,
    I've been through the mill of love;

    Old love, new love,
    Ev -- 'ry love but true love.

    Love For Sale,
    Ap -- pe -- ti -- zing young Love For Sale.

    If you want to buy my wares,
    Fol -- low me and climb the stairs,
    Love For Sale.

    Love For Sale.
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Love For Sale.

    Love For Sale.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Bb-for-C"
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

    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Bb"
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

    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Eb"
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

    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}


\book {
  \bookOutputSuffix "in-Bb-Vol-II-for-C"
    \header {
        subtitle = "(Vol. II changes)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongVolThree
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

    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-A-for-C"
    \header {
        subtitle = "(Elaine trial key 1)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf a <<
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

    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Ab-for-C"
    \header {
        subtitle = "(Elaine trial key 2)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf af <<
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

    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}

