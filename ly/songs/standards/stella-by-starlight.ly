\version "2.19.83"

titleLeft = "Stella By"
titleRight = "Starlight"
title = "Stella By Starlight"
composerName = " V. Young"
lyricistName = "N. Washington"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

rm stella-by-starlight*pdf
lilypond ly/songs/standards/stella-by-starlight.ly 
mv stella-by-starlight*pdf pdf/songs/standards
for file in pdf/songs/standards/stella-by-starlight*pdf ; do op $file ; done

%}

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

structureIntro = \relative c' { 
    \key c \major
    \tempo "Moderato"
    s1*4 \bar "||" \break
    s1*4 \break
    s1*3 | s2.
    \once \override BreathingSign.text = \markup { 
        \musicglyph "scripts.caesura.curved" 
    } \breathe 
    \bar "!" \break 
}
structureForm = \relative c' { 
    \key g \major
    s4 \bar "||"   
    s1*4 \break
    s1*4 
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4     
    \bar "|."
}
structureSolos = \relative c' { 
    \bar "[|:"
    s1*4 \break
    s1*6 \break
    s1*6 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4     
    \bar ":|]"
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:maj9 | af:dim7 | 
    g:1.3-.5.7.11 | c:7 ||

    f2:maj/c a:m/c | g1:m7/c |
    f2:maj/a af:dim7 | g:m7 c:7 |
    
    a2:m gs:dim7/a | a:m9 d:7.9- | 
    g2:maj/b ef:7/bf | a:m7 d4:9

}
chordsFormOriginal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g4 || g1:dim7 | s | d:13 | d:aug7 |
    d1:m9/g | g:7.9- | c:maj9 | s2 f:9 |
    g1/d | e:m9 | b:m | e:m7.5-/bf | 
    d1/a | g:dim7 | fs:m7.5- | b:7 ||

    e1:aug7.9- | s | a:1.3-.5.7.11 | s | 
    c1:m7.7+ | s | g:maj9/b | s ||

    bf1:dim7 | s | f:6.11+ | e:7 |
    c1:m | d:7.9- | g:maj9 | s || 
}
chordsFormRealBook = \transpose bf g \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    e1:m7.5- | a:7.9- | c:m7 | f:7 |
    f1:m7 | bf:7 | ef:maj7 | af:7 |
    bf1:maj7 | e2:m7 a:7.9- | d1:m7 | bf2:m7 ef:7 |
    f1:maj7 | e2:m7 a:7.9- | a1:m7.5- | d:7.9- ||

    g1:aug7.9- | s | c:m7 | s | 
    af1:7 | s | bf:maj7 | s ||

    e1:m7.5- | a:7.9- | d:m7.5- | g:7.9- | 
    c1:m7.5- | f:7.9- | bf:maj7 | s |
}

melodyIntro = \relative c'' { 
    << \relative c''' {
            <g g,>4. ( <f f,>8 ) 2 | 
            <e e,>4. ( <d d,>8 ) 2 | 
            <d d,>4. ( <c c,>8 ) 2 ~ | 1 } \\
        \relative c'' { 
            c1 | b | bf | <a f>4. ( <g e>8 ) 2 } >>

    \tuplet 3/2 { a4 4 4 } \tuplet 3/2 { e4 4 4 } | 
    g4 d2. | 
    \tuplet 3/2 { c4 4 4 } 2 | 
    \tuplet 3/2 { c4 4 4 } 2 |

    \tuplet 3/2 { c'4 4 4 } \tuplet 3/2 { gs4 4 4 } |
    b4 a2. |
    \tuplet 3/2 { g4 d4 4 } ef2 | 
    \tuplet 3/2 { e4 4 4 } \fermata a4
}
melodyHead = \relative c'' { 
    g4 || fs1 ~ | 4 e fs g | d1 ~ | 2 2 | 
    e1 ~ | 4 d4 4 e | g,1 ~ | 2 a | 

    c4 b a g | b2. cs4 | e4. d8 2 ~ | 2. e4 | 
    g4 fs e d | e2 ~ \tuplet 3/2 { e4 fs g } | b4. a8 2 ~ | 2 b || 

    c1 ~ | 4 4 4 b | d1 ~ | 4 c \tuplet 3/2 { b a g } | 
    b2 2 ~ | 4 a g fs | a1 ~ | 2 g | 

    fs1 ~ | 4 e fs g | d1 ~ | 4 4 4 c | 
    ef1 ~ | 4 4 4 d4 | 1 ~ | 1 ||
}
melodyForm = \relative c' { 
    \melodyIntro
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Have you seen Stel -- la by star -- light,
    Stand -- ing a -- lone, 
    moon in her hair?

    Have you seen Stel -- la by star -- light,
    When have you known rap -- ture so rare?

    The song a rob -- in sings
    Through years of end -- less springs.

    The mur -- mur of a brook at ev -- en -- tide
    That rip -- ples by a nook where two lov -- ers hide.

    A great sym -- phon -- ic theme, 
    that's Stel -- la by star -- light and not a dream.

    My heart and I a -- gree
    She's ev -- 'ry thing on earth to me.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }

    \repeat unfold 16 { \skip 1 }
    \repeat unfold 16 { \skip 1 }

    \repeat unfold 12 { \skip 1 }
    \repeat unfold 21 { \skip 1 }

    \repeat unfold 16 { \skip 1 }

    She's all of these and more
    She's ev -- 'ry thing 
    that you'd a -- dore.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}


\book {
  \bookOutputSuffix "original-G-for-C"
    \header {
        subtitle = "(Original Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "original-G-for-Bb"
    \header {
        subtitle = "(Original Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
\book {
  \bookOutputSuffix "original-G-for-Eb"
    \header {
        subtitle = "(Original Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}


\book {
  \bookOutputSuffix "real-book-Bb-for-C"
    \header {
        subtitle = "(Real Book key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose g bf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                s4
                \chordsFormRealBook
            }
            \new Staff = "voice" \transpose g bf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

%{
\book {
  \bookOutputSuffix "real-book-key-for-Bb"
    \header {
        subtitle = "(Real Book key)"
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose g bf  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose g bf { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

%}


\book {
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose g f  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
                \chordsFormRealBook
            }
            \new Staff = "voice" \transpose g f { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \pageBreak
                        \structureForm
                        \structureSolos
                    }
                    {
                        \melodyForm
                        \comp #128
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Bb"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose g f  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
                \chordsFormRealBook
            }
            \new Staff = "voice" \transpose g f { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \pageBreak
                        \structureForm
                        \structureSolos
                    }
                    {
                        \melodyForm
                        \comp #128
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose g f  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormOriginal
                \chordsFormRealBook
            }
            \new Staff = "voice" \transpose g f { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \pageBreak
                        \structureForm
                        \structureSolos
                    }
                    {
                        \melodyForm
                        \comp #128
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
