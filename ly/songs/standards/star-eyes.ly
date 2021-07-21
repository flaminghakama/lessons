\version "2.19.83"

titleLeft = "Star"
titleRight = "Eyes"
title = "Star Eyes"
composerName = "G. dePaul & D. Raye"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

killPreview
rm star-eyes*.pdf
lilypond ly/songs/standards/star-eyes.ly 
mv star-eyes*.pdf pdf/songs/standards
for file in pdf/songs/standards/star-eyes*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureIntro = \relative c' { 
    \key ef \major
    \time 4/4
    \mark \markup \box "Intro/Coda"
    \bar "[|:"
    s1*2
}
structureForm = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \set Score.repeatCommands = #'(start-repeat)
    \bar ":|][|:"
    \repeat volta 2 { 
        \mark \markup \box "A"
        s1*2 \break
        s1*4 \break
        s1 
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \bar "||" \break }
    }
    \override Score.RehearsalMark #'extra-offset = #'( -1.5 . 0 ) 
    \mark \markup \box "B"
    s1*4 \break
    s1*4 \bar "||" 
    \mark \markup \box "A"
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 | s |
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    ef2: c:m7 | f:m7 bf:7 | ef2: c:m7 | ef:m7 af:7 |          
    df1:maj7 | g2:m7.5- c:7.8+.9+ | f1:maj7 | fs4:m7 b:7 f:m7 bf:7 | 
        f2:m7.5- bf:13 ||

    af1:maj7 | s | af:m7 | df:13 | 
    gf1:maj7 | s | f:m7 | bf2:1.4.5.7 bf:13 ||

    ef2: c:m7 | f:m7 bf:7 | ef2: c:m7 | ef:m7 af:7 |          
    df1:maj7 | g2:m7.5- c:7.9- | f1:maj7 | f2:m7.5- bf:13 |
    ef2:7 d:aug7 | df:7 c:7.9- | f:m7 bf:1.4.5.7.9 | ef1 | 
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    ef2: c:m7 | f:m7 bf:7 | ef2: c:m7 | ef:m7 af:7 |          
    df1:maj7 | g2:m7.5- c:7.8+.9+ | f1:maj7 | gf4:m7 cf:7 f:m7 bf:7 | 
        f2:m7.5- bf:13 ||

    af1:maj7 | s | af:m7 | df:13 | 
    gf1:maj7 | s | f:m7 | bf2:1.4.5.7 bf:13 ||

    ef2: c:m7 | f:m7 bf:7 | ef2: c:m7 | ef:m7 af:7 |          
    df1:maj7 | g2:m7.5- c:7.9- | f1:maj7 | f2:m7.5- bf:13 |
    ef2:7 d:aug7 | df:7 c:7.9- | f:m7 bf:1.4.5.7.9 | ef1 | 
}


melodyIntro = \relative c' { 
    ef4 r bf'-. ef-. | af,-.  r8 df r cf r ff, 
} 
melodyForm = \relative c' { 
    f4. ef8 ~ 2 | r4 ef8 f g bf g bf | f4. ef8 ~ 2 | r4 ef8 f gf af bf c | 
    bf4. af8 ~ 2 | r8 df4 c8 bf c \tuplet 3/2 { df8 ef c ~ } | c2.. 8 | cf8 df cf df bf2 ||
        cf8 df cf df bf2 ||

    ef4 4 4. af,8 | bf2. af4 | ef'4. 8 cf8 ef,4 gf16 df' | bf1 | 
    df4. df,8 ef f gf af | bf2.. 8 | af8 4. bf4 af8 f ~ | 2 r ||

    f4. ef8 ~ 2 | r4 ef8 f g bf g bf | f4. ef8 ~ 2 | r4 ef8 f gf af bf c | 
    bf4. af8 ~ 2 | r8 df4 c8 bf c \tuplet 3/2 { df8 ef c ~ } | c2.. 8 | cf8 df cf df bf4 4 |
    bf2. 4 | af4. g8 ~ 2 | r4 f \tuplet 3/2 { af4 c ef } | ef2 r ||
}

melodySong = \relative c'' { 
    \melodyIntro
    \melodyForm
}
melodySongForEb = \relative c'' { 
    \transpose c c, \melodyIntro
    \melodyForm
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 7 { \skip 1 }    
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Star eyes, that to me is what your eyes are, 
    Soft as stars in A -- pril skies are, 
    tell me some -- day you'll ful -- fill 
    their pro -- mise of a thrill.

        love -- li -- ness of yours.

    All my life I've felt
    con -- tent to star gaze at the skies, 
    Now I on -- ly want to melt 
    the star -- dust in your eyes.

    Star eyes, when, if e -- ver, will my lips know
    if it's me for whom those eyes glow?
    Makes no diff -- 'rence where you are, 
    your eyes still hold my wish -- ing
    star, oh, star eyes, 
    how love -- ly you are.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 2 { \skip 1 } 
    flash -- ing eyes in which my hopes rise, 
    let me show you where my heart lies, 
    let me prove that it a -- dores 
    that    
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = "" %\markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
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
                    \lyricsIntro
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
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
                    \lyricsIntro
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
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
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsFormForFlats
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
                        \melodySongForEb
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
                    \lyricsIntro
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

%{
\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
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
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
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
}

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose f g  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose f g { 
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
}
%}
