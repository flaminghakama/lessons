\version "2.19.83"

titleLeft = "L-O-"
titleRight = "V-E"
title = "L-O-V-E"
composerName = "N. \"K.\" Cole"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm l-o-v-e*.pdf ; lilypond ly/songs/standards/l-o-v-e.ly ; for file in l-o-v-e*pdf ; do op $file ; done

killPreview
rm pdf/songs/standards/l-o-v-e*
lilypond ly/songs/standards/l-o-v-e.ly 
mv l-o-v-e*pdf pdf/songs/standards
for file in pdf/songs/standards/l-o-v-e*pdf ; do op $file ; done 

git add . ; git commit -m"additional keys" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl


%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

structureForm = \relative c' { 

    \key g \major

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSectionNoBarline "A"
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
	g1:6 | s | a:m7 | d:7 |
	a1:m7 | d:7 | g:maj7 | g:6 | 

    d1:m6 | g:7 | c:maj7 | s | 
    a1:7 | s | d:7 | a2:m7 d:7 ||

    g1:6 | s | a:m7 | d:7 |
	a1:m7 | d:7 | g:maj7 | g:6 | 

    d1:m6 | g:7 | c:maj7 | cs:dim7 | 
    g1:/d | a2:m7 d:7 | g1 | a2:m7 d:7 ||
}

melodyForm= \relative c'' { 
    g2. fs4 | 4 e ds e | g2. fs4 | 1 | 
    fs2. e4 | 4 d cs d | fs2. e4 | 1 | 
    b'2. a4 | 4 g fs g | b2. a4 | 4 g fs g | 
    b2. a4 | 4 g fs g | b a a g | g fs e fs || 

    g2. fs4 | 4 e ds e | g2. fs4 | 1 | 
    fs2. e4 | 4 d cs d | fs2. e4 | 1 | 
    b'2. a4 | 4 g fs g | b a a g | g fs e fs |
    g2. fs4 | 4 e fs a | g1 | R1 ||
}

lyricsHead = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    L is for the way you look at me
    O is for the on -- ly one I see
    V is ve -- ry, ve -- ry ex -- tra -- or -- din -- a -- ry
    E is ev -- en more than a -- ny -- one that you a -- dore can

    Love is all that I can give to you
    Love is more than just a game for two
    Two in love can make it, take my heart and please don't break it
    Love was made for me and you
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(key of G)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(key of G)"
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
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(key of G)"
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
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-C"
    \header {
        subtitle = "(key of C)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g, c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(key of C)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose g, c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Ab-for-C"
    \header {
        subtitle = "(key of Ab)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g af { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g af { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Ab-for-Bb"
    \header {
        subtitle = "(key of Ab)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose g af  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g af { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Ab-for-Eb"
    \header {
        subtitle = "(key of Ab)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose g af  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g af { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        subtitle = "(key of Eb)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g ef { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g ef { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Db-for-C"
    \header {
        subtitle = "(key of Db)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g df { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g df { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-Gb-for-C"
    \header {
        subtitle = "(key of Gb)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g gf { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g gf { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-B-for-C"
    \header {
        subtitle = "(key of B)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose g b { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose g b { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureForm
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHead
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\repeat unfold 75 { \skip 1 }
                    %\lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}
