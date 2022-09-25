\version "2.19.83"

titleLeft = "Fly Me"
titleRight = "To The Moon"
title = "Fly Me To The Moon"
composerName = "B. Howard"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm fly-me-to-the-moon*.pdf ; lilypond ly/songs/standards/fly-me-to-the-moon.ly ; for file in fly-me-to-the-moon*pdf ; do op $file ; done

killPreview
rm pdf/songs/standards/fly-me-to-the-moon*
lilypond ly/songs/standards/fly-me-to-the-moon.ly 
mv fly-me-to-the-moon*pdf pdf/songs/standards
for file in pdf/songs/standards/fly-me-to-the-moon*pdf ; do op $file ; done 

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

    \key c \major

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSectionNoBarline "Verse"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar "||"

    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar "||"
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7.9- | a2:m7 a:7.9- | 

	d1:m7 | g:7.9- | c | a:m | 
	d1:m7 | g:7 | f2:dim7/c c | b:m7 e:7 | 

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7.9- | a2:m7 a:7.9- | 

	d1:m7 | g:7.9- | e:m7.5- | a:7.9- | 
	d:m7 | g:7.9- | c1 | b2:m7 e:7 | 
}

melodyForm= \relative c'' { 
	c4 b a8 g4. | f4. g8 a4 c | b a g8 f4. | e1 | 
	a4 g f8 e4. | d4. e8 f4 a | gs4 f e8 d4. | c2. 

	cs4 | d8 a'4 8 ~ 2 ~ | 4 c2 b4 | g1 ~ | 2. 
	b,4 | c8 f4 8 ~ 2 ~ | 4 a2 g4 | f2 e ~ | 1 | 
    
    
	c'4 b a8 g4. | f4. g8 a4 c | b a g8 f4. | e1 |
	a4 g f8 e4. | d4 e f a | gs4 f e8 d4. | c2. 

	cs4 | d8 a'4 8 ~ 2 ~ | 4 c2 b4 | 
	\toCoda
		g1 ~ | 2. 
	gs4 | a8 c,4 8 ~ 2 ~ | 4 2 d4 | c1 | R1 |
}

lyricsHead = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	Fly me to the moon, 
	and let me play a -- mong the stars;

	let me see what spring is like
	on Ju -- pi -- ter and Mars.

	In o -- ther words, 
	hold my hand!

	In o -- ther words, 
	dar -- ling kiss me!


	Fill my heart with song, 
	and let me sing for -- ev -- er more;

	you are all I long for 
	all I wor -- ship and a -- dore.

	In o -- hter words, 
	please be true

	In o -- ther words,
	I love you
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-C"
    \header {
        subtitle = "(key of C)"
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
  \bookOutputSuffix "in-Db"
    \header {
        subtitle = "(key of Db)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c df <<
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
  \bookOutputSuffix "in-D"
    \header {
        subtitle = "(key of D)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c d <<
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
  \bookOutputSuffix "in-Eb"
    \header {
        subtitle = "(key of Eb)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
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
  \bookOutputSuffix "in-E"
    \header {
        subtitle = "(key of E)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c e <<
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
  \bookOutputSuffix "in-F"
    \header {
        subtitle = "(key of F)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c f <<
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
  \bookOutputSuffix "in-Gb"
    \header {
        subtitle = "(key of Gb)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c gf <<
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
  \bookOutputSuffix "in-G"
    \header {
        subtitle = "(key of G)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c g <<
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
  \bookOutputSuffix "in-Ab"
    \header {
        subtitle = "(key of Ab)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c af, <<
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
  \bookOutputSuffix "in-A"
    \header {
        subtitle = "(key of A)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c a, <<
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
  \bookOutputSuffix "in-Bb"
    \header {
        subtitle = "(key of Bb)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c bf, <<
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
  \bookOutputSuffix "in-B"
    \header {
        subtitle = "(key of B)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c b, <<
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
