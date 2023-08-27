\version "2.19.81"

titleLeft = "Satin"
titleRight = "Doll"
title = "Satin Doll"
composerName = "E. K. 'D.' Ellington, B. Strayhorn"
lyricistName = "J. Mercer"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm satin-doll*pdf
lilypond ly/songs/standards/satin-doll*.ly
mv satin-doll*.pdf pdf/songs/standards
for file in pdf/songs/standards/satin-doll*pdf ; do open -a Preview $file ; done

killPreview ; rm satin-doll*pdf ; lilypond ly/songs/standards/satin-doll*.ly ; mv satin-doll*.pdf pdf/songs/standards ; for file in pdf/songs/standards/satin-doll*pdf ; do open -a Preview $file ; done

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

structure = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \key c \major
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
    \startSection "Intro"
    \partial 8 s8
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSection "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSection "A"
    s1*4 \break
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . -1 )
    \startSection "A"
    s1*4 \break
    s1*4 \break
    \bar ":|]"
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s8 ||
    c1:/g | s | s | s2 a:7 ||

    d2:m7 g:7 | d:m g:7 | e:m7 a:7 | e:m7 a:7 | 
    d1:7 | df:13 | c:maj7 | a:7 ||

    d2:m7 g:7 | d:m g:7 | e:m7 a:7 | e:m7 a:7 | 
    d1:7 | df:13 | c:maj7 | s ||

    g2:m7 c:7 | g:m7 c:7 | f1:maj7 | s | 
    a2:m7 d:7 | a:m7 d:7 | g1:7 | s ||

    d2:m7 g:7 | d:m g:7 | e:m7 a:7 | e:m7 a:7 | 
    d1:7 | df:13 | c:maj7 | e2:m7 a:7 ||
}

melodyIntro = \relative c'' { 
    <<
        \relative c'' { 
            e8 ~ |
            e4 c d r8 e ~ | 4 c8 d r4 r8 e ~ | 4 c d r8 e ~ | 4 f8 g 
        } \\
        \relative c'' {
            g8 ~ |  
            g4 e8 8 f4 r8 g ~ | 4 e8 f r4 r8 g ~ | 4 e8 8 f4 r8 g ~ | 4 a8 b 
        }
    >> r2 
}

melody = \relative c'' { 
    \melodyIntro
    a8 g a g ~ 8 a4. | r8 a4. g8 a4. | 
    b8 a b a ~ 8 b4. | r8 b4. a8 b4. |
    r8 d4. c8 d4. | r8 bf4. af4 bf8 g ~ | 1 ~ | 1 ||

    a8 g a g ~ 8 a4. | r8 a4. g8 a4. | 
    b8 a b a ~ 8 b4. | r8 b4. a8 b4. |
    r8 d4. c8 d4. | r8 bf4. af4 bf8 g ~ | 1 | r2 r4 r8 g ||

    c4 bf8 a g4 a8 bf | c4 bf8 a g a bf c ~ | 1 ~ | 2. r8 c |
    d8 c b a ~ 8 b c4 | d8 c b a ~ 8 b c d ~ | 1 | 
    \override NoteHead.style = #'cross
    r8 g,4 8 8 4. ||
    \revert NoteHead.style 

    a8 g a g ~ 8 a4. | r8 a4. g8 a4. | 
    b8 a b a ~ 8 b4. | r8 b4. a8 b4. |
    r8 d4. c8 d4. | r8 bf4. af4 bf8 g ~ | 1 | R ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2



}
lyricsHeadTwo = \lyricmode {
}


lyricsEnglishOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Cig -- a -- rette hol -- der 
    which wigs me 

    O -- ver her should -- er, 
    she digs me,

    Out cat -- tin', 
    that Sat -- in Doll.

    Ba -- by shall we go 
    out skip -- pin', 

    Care -- ful, a -- mi -- go, 
    you're flip -- pin',

    Speaks Lat -- in, 
    that Sat -- in Doll.

    She's no -- bod -- y's fool, 
    so I'm play -- ing it cool as can be, 

    I'll give it a whirl but I 
    ain't got no girl catch -- ing me,
    Switch -- e -- roo -- ney.

    Tel -- e -- phone num -- bers, 
    well, you know, 

    Do -- ing my rhum -- bas 
    with u -- no,

    And that 'n'
    my Sat -- in Doll.

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
        poet = "Concert Pitch"
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
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}
%}
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
                \chordsForm 
            }
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
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
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
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
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}
