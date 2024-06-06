\version "2.24.0"

titleLeft = "I Concentrate"
titleRight = "On You"
titleFull = "I Concentrate On You"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm i-concentrate-on-you*pdf ; lilypond ly/songs/standards/i-concentrate-on-you.ly ; for file in i-concentrate-on-you*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/i-concentrate-on-you*
lilypond ly/songs/standards/i-concentrate-on-you.ly 
mv i-concentrate-on-you*pdf pdf/songs/standards
for file in pdf/songs/standards/i-concentrate-on-you*pdf ; do op $file ; done 

git add . ; git commit -m"fixing notes" ; git push 
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
    s1*11 s2.. \toCoda s8 
    s1*4 
    \bar "||"
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*6 \break 
    s1*6
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
    ef1:maj7 | s | bf:7.13- | s | ef:m7 | df2:m7 gf:9 | cf1:6 | af2:m7 af:m7/gf | 
    f1:m7.5- | bf:7 | ef:m7 | c:m7.5- | b:7 | bf:7.13- | ef:6 | f2:m7 bf:7 ||

    ef1:maj7 | s | bf:7.13- | s | ef:m7 | df2:m7 gf:9 | cf1:6 | s2 cf/bf | 
    af1:m7 | df:7 | gf:maj7 | cf:maj7 | f:7 | bf:7.13- | ef2:6 af:6 | ef ef:7 ||

    af1:maj7 | af:m7 | ef | g2:m7 c:7 | f1:m7 | bf:7 | ef:maj7 | ef:7 | 
    af1:maj7 | df:7 | gf2:maj7 gf/f | ef:m7 ef:m/df | c1:m7.5- | f:7 | bf | bf1:7 ||

    ef1:maj7 | af:7.11+ | g:m7 | c:7.11+ | f:m7 | bf2:7 af:7 | a1:m7.5- | d:aug7 |
    g1:m7.5- | c:aug7 | f:m | fs:dim7 | f:7.5-/cf | bf:7.13- | ef | f2:m7 bf:7 ||
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}

chordsSongVolThree = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    ef1:maj7 | s | af:7.11+ | s | ef:m7 | cs2:m7 fs:9 | b1:maj7  | s | 
    f1:m7.5- | bf:7.9- | ef:m6 | gf:7 | b:7.11+ | bf2:aug7 bf:7 | ef1:6.9 | s ||

    ef1:maj7 | s | af:7.11+ | s | ef:m7 | cs2:m7 fs:9 | b1:maj7  | s | 
    af1:m7 | df:7 | gf:maj7 | c:7 | f:7 | bf2:aug7 bf:7 | ef1:6.9 | s2 ef:6.9 ||

    af1:maj7 | af:m7 | ef:maj7 | c:7.9+ | f1:m7 | bf:7 | ef:maj7 | s2 a:7.11+ | 
    af1:maj7 | af:m7 | gf:maj7 | s | c1:m7 | f:7 | bf:13 | bf1:aug7 ||

    ef1:6.9 | af:7.11+ | g:m7 | gf:13.11+ | f:m7 | bf2:7 af:7 | g:13 g:aug7 | c2:1.4.5.7.9 c:7.9- |
    f1:m7.5- | df2:9 c:9 | f1:m | fs:dim7 | b:7.11+| bf2:aug7 bf:7 | ef1:6.9 | s ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    f1:7.5-/cf | bf:7.13- | ef2:6 af:6 | ef1:6 | 
    f1:m7 | s | bf:13.9- | s2 e:9 | ef1:6.9 | s | s | s ||
}

melody = \relative c' { 
    \accidentalStyle modern

    r4 bf c ef | d2. c4 | d4. 8 2 ~ | 2. r4 | 
    r4 ef \tuplet 3/2 { gf4 af bf } | af2. gf4 | af1 ~ | 2. r4 |

    r4 af \tuplet 3/2 { af4 bf cf } | bf4 a af2 | r4 af gf f | gf1 | 
    r4 f af g | gf4 f2 ef4 ~ | 1 ~ | 2. r4 ||


    r4 bf c ef | d2. c4 | d4. 8 2 ~ | 2. r4 | 
    r4 ef \tuplet 3/2 { gf4 af bf } | af2. gf4 | af1 ~ | 2. r4 |

    r4 af \tuplet 3/2 { cf4 df ef } | df4 c cf2 | r4 b bf a | bf1 | 
    r4 f af g | gf4 f2 ef4 ~ | 1 ~ | 4 r  ef4 4  ||


    c'2. 4 | b2. 4 | 2 bf ~ | 2 bf,4. 8 | 
    af'2. 4 | 2 g4. fs8 | g1 ~ | 2 ef4. 8 | 
    
    c'2 4 4 | cf2 \tuplet 3/2 { cf4 df cf } | cf2 bf ~ | 4 4 4 4 | 
    bf2. 4 | c2. bf8 c | d1 ~ | 2. r4 ||


    r4 ef4 4 4 | d2. bf4 | c4. 8 2 ~ | 2. r4 | 
    r4 c b c | bf?2 \tuplet 3/2 { bf,4 c ef } | g1 ~ | 2. r4 | 

    r4 g bf a | af2. g4 | g f e4. f8 | c'1 | 
    r4 f, af g | gf f2 ef4 ~ | 1 ~ | 2. r4 ||

}
melodyForFlats = \relative c'' { 
    \melody
}

melodyCoda = \relative c' { 
    \accidentalStyle default
    r4 f af g | gf f2 ef4 ~ | 1 ~ | 2 2 | 
    f4. 8 2 ~ | 2 2 | g4. 8 2 ~ | 2 bf | 
    bf1 ~ | 1 ~ | 4 r r2 | R1 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


    When -- ev -- er skies look gray to me
    and trou -- ble be -- gins to brew,

    When -- ev -- er the win -- ter winds be -- come too strong,
    I Con -- cen -- trate On You.

    When for -- tune cries 'Nay, nay!' to me
    and peo -- ple dec -- lare 'You're through'

    When -- ev -- er the blues be -- come my on -- ly song,
    I Con -- cen -- trate On You.


    On your smile, so sweet, so ten -- der,
    when at first my kiss you de -- cline.

    On the light in your eyes when you sur -- ren -- der
    and once a -- gain our arms in -- ter -- twine.

    And so when wise men say to me
    that love's young dream ne -- ver comes true.

    To prove that e -- ven wise men can be wrong,
    I Con -- cen -- trate On You.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
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
  \bookOutputSuffix "in-Eb-for-C"
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
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(fake book key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
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
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(fake book key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
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
  \bookOutputSuffix "in-Eb-Vol-III-for-C"
    \header {
        subtitle = "(Vol. III changes)"
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


