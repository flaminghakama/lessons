\version "2.19.83"

titleLeft = "Rockin' Around The"
titleRight = "Christmas Tree"
title = "Rockin' Around The Christmas Tree"
composerName = "Johnny Marks"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{
killPreview
rm rockin-around-the-christmas-tree-*pdf    
lilypond ly/songs/rockin-around-the-christmas-tree.ly
for file in rockin-around-the-christmas-tree-*.pdf ; do open -a Preview $file ; done
mv rockin-around-the-christmas-tree-in-Bb-for-C.pdf pdf/songs 
mv rockin-around-the-christmas-tree-in-Bb-for-Eb.pdf pdf/songs
mv rockin-around-the-christmas-tree-in-D-for-C.pdf pdf/songs 
mv rockin-around-the-christmas-tree-in-D-for-Eb.pdf pdf/songs
%}

toCodaMarkup = \markup \translate #'( -1.5 . 2 ) \huge \bold \musicglyph #"scripts.coda" 
toCoda = <>^\toCodaMarkup


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
    (make-pango-font-tree "Cochin" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \time 4/4
    \key g \major
    s1*4
    \bar "S[|:"
    \repeat volta 2 { 
        s1*6
    }
    \alternative { 
        \relative c' { s1*2 \bar ":|]" }
        \relative c' { s1*2 \bar "||" }
    }
    s1*8 
    \bar "||" \break
    s1*8
    \bar "||"
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key g \major 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*6
    \bar "|."
}

chordsFormG = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    g1 | e:m | c | d || \break

    g1 | s | d:7 | s | 
    a2:m d:7 | a2:m d:7 | 

        a2:m d:7 | g d:7 | 
        a2:m d:7 | g g:7 | 

    c1 | s | b:m | s | 
    e2:m e:m/ds | e:m7 e:m6 | a1:7 | d:7 |

    g1 | s | d:7 | s | 
    a2:m d:7 | a2:m d:7 | a2:m d:7 | g d:7 |
}

chordsCodaG = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*2
    g1 | e:m | c2 a:m | d4.:7 g8 s2 |
}

melodyG = \relative c'' { 

    \comp #4 
    \comp #4 
    \comp #4 
    \comp #4 ||

    d8 b8 d e ~ 4. 8 | d4 8 e ~ 8 4 8 | 
    fs4 e c a8 fs ~ | \noBreak 2. r4 | 

    e'8 ds e fs ~ 4 4 | e8 4 fs8 ~ 4 e8 8 | 

        d4 ds e c8 b ~ | \noBreak 2 r | \break
        d4 ds e fs, | g2. r4 | 

    e'4 ds e ds | e g, c8 e4 fs8 ~ | \noBreak 
    fs8 d4. r8 b d [ fs ] ~ | \noBreak fs2. r4 | 

    g4 fs g fs | g e fs g | 
    a4 r8 g8 fs4 e | d e fs d | 

    d8 b8 d e ~ 4. 8 | d4 8 e ~ 8 4 8 | 
    fs4 e c a8 fs ~ | \noBreak 2. r4 | 

    e'8 ds e4 fs4 4 | e8 4 fs8 ~ 8 e4 8 |
    \toCoda
    d4 ds e fs,8 g ~ | 2 r |
}

melodyCodaG = \relative c'' { 
    d4 r ds r | e r fs r8 a ( ~ | 4 g2. ~ | 1 ~ | 1 ~ | 4. ) 8 r2 \bar "|."
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Rock -- in' a -- round the Christ -- mas tree 
    At the Christ -- mas par -- ty hop.

    Mis -- tle -- toe hangs where you can see 
    eve -- ry cou -- ple tries to stop.

        do some ca -- rol -- ling!

    You will get a sen -- ti -- men -- tal 
    feel -- ing when you hear 

    Voi -- ces sing -- ing 'Lets be jol -- ly;
    Deck the halls with boughs of hol -- ly'

    Rock -- in' a -- round the Christ -- mas tree 
    have a hap -- py hol -- i -- day.

    E -- very -- one's dan -- cing mer -- ri -- ly 
    in the new old fa -- shioned way!
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Rock -- in' a -- round the Christ -- mas tree 
    Let the Christ -- mas spir -- it ring.

    La -- ter we have some pump -- kin pie 
    and we 
}
lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    new old fa -- shioned way.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\layout { 
    indent = 2.15\cm
    short-indent = 1.25\cm
}

\book {
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose g bf  { \chordsFormG }
            \new Staff = "voice" \transpose g bf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyG
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
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose g bf  { \chordsCodaG }
            \new Staff = "voice" \transpose g bf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaG
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
    }
}

\book {
    \bookOutputSuffix "in-Bb-for-Eb"
    \paper {
        % First page spacing after header
        markup-system-spacing.padding = #6
    }
    \header {
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose g g  { \chordsFormG }
            \new Staff = "voice" \transpose g g { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyG
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose g g  { \chordsCodaG }
            \new Staff = "voice" \transpose g g { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaG
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-D-for-C"
    \header {
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose g d  { \chordsFormG }
            \new Staff = "voice" \transpose g d { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyG
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
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose d g  { \chordsCodaG }
            \new Staff = "voice" \transpose d g, { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaG
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
    }
}

\book {
    \bookOutputSuffix "in-D-for-Eb"
    \paper {
        % First page spacing after header
        markup-system-spacing.padding = #6
    }
    \header {
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef, c \transpose g d { \chordsFormG }
            \new Staff = "voice" \transpose ef, c \transpose g d { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyG
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose ef, c \transpose g d  { \chordsCodaG }
            \new Staff = "voice" \transpose ef, c \transpose g d, { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaG
                >>
            }
        >>
    }
}


