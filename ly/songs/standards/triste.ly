\version "2.19.83"

titleLeft = "Tri"
titleRight = "ste"
title = "Triste"
composerName = "A. C. Jobim"
lyricistName = "A. C. Jobim"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

https://www.youtube.com/watch?v=vhTH-Fv-c-g

killPreview
rm triste*.pdf
lilypond ly/songs/standards/triste.ly 
mv triste*.pdf pdf/songs/standards
for file in pdf/songs/standards/triste*.pdf ; do op $file ; done

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key a \major
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \bar "[|:"
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break 
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:maj7 | s | f:maj7.11+/a | s | 
    a1:maj7 | s | cs:m7 | fs:aug7 |
    b2:m b:m7/a | gs:m7.5- cs:7 | fs1:m7 | gs:aug7.9+ |
    cs1:maj7 | gs:13 | cs2:maj7 fs:7 | b:m7 e:7 ||

    a1:maj7 | s | a:m7 | d:7 | 
    a1:maj7 | s | e:m7 | a:7 |
    d1:maj7 | d:m6 | cs:m7 | c:dim7 | 
    b1:m7 | e2:1.4.5.7 e:7 | a:m7 a:m6 | a:m7 a:m6 ||    
}


melody = \relative c'' { 
    r4 r8 a8 ~ 8 gs4 a8 | gs4 fs8 cs ~ 8 d e4 ~ | 1 ~ | 1 | 
    r4 r8 a8 gs4 a8 gs ~ | 8 fs4 cs8 ~ 8 d e4 ~ | 1 ~ | 1 | 
    r4 r8 fs e fs4 e8 ~ | 8 d4 cs8 ~ 8 gs4 b8 ~ | 8 gs a cs e gs4 b8 ~ | 2. a8 bs ~ | 
    bs8 gs8 8 8 ~ 4. gs8 ~ | 8 es8 8 8 ~ 4. ds8 ~ | 8 cs8 8 8 ~ 4 fs ~ | 8 e8 8 8 ~ 2 ||

    r4 r8 a8 ~ 8 gs4 a8 | gs4 fs8 cs ~ 8 d e4 ~ | 1 ~ | 1 | 
    r4 r8 a8 gs4 a8 gs ~ | 8 fs4 cs8 ~ 8 d e4 ~ | 1 ~ | 1 | 
    r8 a a, [ b ] cs d4 e8 ~ | 8 ef4 d8 ~ 4 e ~ | 4 d8 cs b a4 b8 ~ | 1 | 
    r4 r8 d8 ~ 8 cs4 d8 | b4 cs8 a ~ 8 b4 a8 ~ | 1 ~ | 1 | 
}


lyricsPortugeseHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Triste é viver na solidão
    Na dor cruel de uma paixão
    Triste é saber que ninguém
    Pode viver de ilusão
    Que nunca vai ser nunca vai dar
    O sonhador tem que acordar

    Tua beleza é um avião
    Demais p'rum pobre coração
    Que pára pra te ver passar
    Só pra me maltratar
    Triste é viver na solidão

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Sad is to live in sol -- i -- tude,
    Far from your tran -- quil al -- ti -- tude;

    Sad is to know that no one e -- ver can live on a dream
    that ne -- ver can be, will ne -- ver be, 
    Dream -- er a -- wake, wake up and see,

    Your beau -- ty is an aer -- o -- plane,
    So high my heart can't bear the strain;

    A heart that stops when you pass by, 
    on -- ly to cause me pain, 
    Sad is to live in sol -- i -- tude.
}
lyricsHeadTwo = \lyricmode {
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

%{
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
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
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
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
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
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
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

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(Key of Elis Regina)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose a g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
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
        subtitle = "(Key of Elis Regina)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose a g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
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
        subtitle = "(Key of Elis Regina)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose a g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}
