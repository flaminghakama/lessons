\version "2.19.83"

titleLeft = "Somewhere, Over"
titleRight = "The Rainbow"
title = "Somewhere, Over The Rainbow"
composerName = "H. Arlen"
lyricistName = "E. Y. Harburg"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm somewhere-over-the-rainbow*.pdf
lilypond ly/songs/standards/somewhere-over-the-rainbow.ly 
mv somewhere-over-the-rainbow*.pdf pdf/songs/standards
for file in pdf/songs/standards/somewhere-over-the-rainbow*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #10

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

\include "ly/ily/layout.ily"

structureIntro = \relative c' { 
    \key ef \major
    \time 2/2
    s1*12
    s1*2
    \time 3/2 
    s1.*2
    \time 2/2
    s1
    \time 3/2 
    s1.
    \time 2/2
    s1*2 \break
}
structureForm = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 0 ) 
    \mark \markup \box "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*8 \bar "||" 
        s1*7 \break
    }
    \alternative {
        { s1 \bar ":|]" }
        { s1 \bar "||" }
    }
    \once \override Score.RehearsalMark #'extra-offset = #'( 2.5 . -1.2 ) 
    \mark \markup \box "B"
    s1*8 \bar "||" \pageBreak
    s1*8 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 0 ) 
    \mark \markup \box "A"
    \bar "||" 
    s1*8 \bar "||" \break
    s1*8 
    \bar "|."
}
structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . 0 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1 \bar "||" 
    s1 | s2 \fermata s4 s | 
    s2. \fermata s4 | 
    \tempo "rit."
    s2 \fermata s4 \fermata s4 |
    \fermata s1
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*12
    s1*2
    s1.*2
    s1
    s1.
    s1*2
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m7.5- | d:7.9- | g:m7 | s2 a:7.5- | 
    af1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7.9- ||

    f1:m7 | af:m7 | g:m7 | c:7.9- | 
    f1:m7 | bf:7.9- | ef:maj7 | f2:m7 bf:7.9- | 
        f2:m7 bf:7.9- | 

    ef1:maj7 | s | f:m7 | bf:7.9- | 
    g:m7 | c:7.9- | f:m7 | bf:7.9- || 

    ef1:maj7 | s | a:m7.5- | d:7.9- | 
    g:m7 | c:7 | f:m7 | bf:7 ||

    a1:m7.5- | d:7.9- | g:m7 | s2 a:7.5- | 
    af1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7.9- ||

    f1:m7 | af:m7 | g:m7 | c:7.9- | 
    f1:m7 | bf:7.9- | ef:maj7 | f2:m7 bf:7.9- | 
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 | ef1:maj7 | s |
    f1:m7 | bf1:7.9- | a4:m7.5- af:m6 ef2:maj7.11+ || 
}

melodyIntroInBb = \relative c' { 

    r8 f g [ ef ] f4. c16 d16 | ef4 4 8 f4 bf,16 c |
    d4 d d8 ef4 a,16 bf | c1 |

    d2 2 | d8 f4 ef8 d4 c | 
    bf1  ~ | 2 r | 

    r8 f'8 g [ ef ] f4. c16 d | ef4 4 8 f4 bf,16 c | 
    d4 d d8 ef4 a,16 bf | c1 |

    a2 bf | a'2 g4 f | 
    a2 f1 |

    r4 a,8 bf d4. f8  a4. bf8 | f1 | 
    r4 a,8 bf d4 f a4. bf8 | c1 ~ | 2 r ||
}

melodyIntro = \transpose bf, ef \melodyIntroInBb

melodyForm = \relative c' { 
    ef1 | ef' | d2 bf8 c4. | d2 ef | 
    r2 ef,4. c'8 ~ | 1 | bf ~ | 1 ||

    r2 c,2 | af'1 | g2 ef8 f4. | g2 af | 
    f2. d8 ef | f2 g | ef1 ~ | 2 r ||
        ef2 \repeatTie \breath bf' ||

    g4 bf g bf | g8 bf4. g4 bf | af bf af bf | af bf af bf | 
    c1  ~ | 1 ~ | 1 | r2 r4 bf ||

    g4 bf g bf | g8 bf4. g4 \breath bf | a c a c | a c a c | 
    d1 | d | f | c ||

    ef,1 | ef' | d2 bf8 c4. | d2 ef | 
    r2 ef,4. c'8 ~ | 1 | bf ~ | 1 ||

    af1 | af | g2 ef4 f | g2 af | 
    f2 d4. ef8 | f2 g | ef1 | R1 ||
}
melodyCoda = \relative c'' { 
    r2 r4 bf4 ||
    g4 bf g bf | g bf g bf | af bf af bf | af bf c d | 
    ef1 ||
}

melodySong = \relative c'' { 
    \melodyIntro
    \melodyForm
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    When all the world is a hope -- less jum -- ble
    And the rain -- drops tum -- ble all a -- round,

    Hea -- ven o -- pens it's ma -- gic lane.

    When all the clouds dar -- ken up the sky -- way
    There's a rain -- bow hig -- way to be found,

    Lead -- ing from your win -- dow pane

    To a place be -- hind the sun,
    Just a step be -- yond the rain.
}

lyricsIntroSkip = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 19 { \skip 1 }
    \repeat unfold 8 { \skip 1 }

    \repeat unfold 19 { \skip 1 }
    \repeat unfold 7 { \skip 1 }

    \repeat unfold 14 { \skip 1 }
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Some -- where o -- ver the rain -- bow, way up high,
    There's a land that I heard of once in a lul -- la -- by.
    
    \repeat unfold 1 { \skip 1 }

    Some -- day I'll wish u -- pon a star 
    and wake up where the clouds are far be -- hind.

    Where trou -- bles melt like le -- mon drops 
    a -- way a -- bove the chim -- ney tops,
    That's where you'll find me.
    
    Some -- where o -- ver the rain -- bow, blue -- birds fly.
    Birds fly o -- ver the rain -- bow; why, then, oh why can't I?
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 7 { \skip 1 }
    skies are blue,
    And the dreams that you dare to dream real -- ly do come true.
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    If hap -- py lit -- tle blue -- birds fly 
    be -- yond the rain -- bow,
    Why, oh why can't I?
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
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
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
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}


\book {
  \bookOutputSuffix "in-Gb-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Gb-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Gb-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        <<
            \new ChordNames \transpose ef gf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose ef gf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}
