
\version "2.19.83"

titleLeft = "The Girl"
titleRight = "From Ipanema"
title = "The Girl From Ipanema"
composerName = "A. C. Jobim"
lyricistName = "A. C. Jobim"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

killPreview
rm girl-from-ipanema*.pdf
lilypond ly/songs/standards/girl-from-ipanema.ly 
mv girl-from-ipanema*.pdf pdf/songs/standards
for file in pdf/songs/standards/girl-from-ipanema*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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
    \key f \major
    \override Score.RehearsalMark #'extra-offset = #'( -2.4 . 0.6 ) 
	\startSection "A"
	s1*4 \break
	s1*4 \break
	\startSection "A"
	s1*4 \break
	s1*4 \break
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \startSection "A"
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	f1:6/c | s | g:7/d | s | 
	g:m7/d | df:dim7 | f:6/c | a4:m7 af:7 df:maj7 gf:maj7 | 

	f1:6/c | s | g:7/d | s | 
	g:m7/d | df:dim7 | f1:6/c | s ||

	fs1:maj7 | s | b:7 | s | 
	fs1:m7 | s | d:7 | s | 
	g1:m7 | s | ef:7 | s |
	a1:m7 | d:7.9-.11+ | g:m7 | c:7.9-.11+ ||

	f1:6/c | s | g:7/d | s | 
	g:m7/d | df:dim7 | f:6/c | gf:7 | 
}
chordsForTransposing = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	f1:6/c | s | g:7/d | s | 
	g:m7/d | cs:dim7 | f:6/c | a4:m7 gs:7 cs:maj7 fs:maj7 | 

	f1:6/c | s | g:7/d | s | 
	g:m7/d | cs:dim7 | f1:6/c | s ||

	fs1:maj7 | s | b:7 | s | 
	fs1:m7 | s | d:7 | s | 
	g1:m7 | s | ef:7 | s |
	a1:m7 | d:7.9-.11+ | g:m7 | c:7.9-.11+ ||

	f1:6/c | s | g:7/d | s | 
	g:m7/d | cs:dim7 | f:6/c | fs:7 | 
}



melody = \relative c'' { 
	g4. e8 4 d8 g ~ | 4 e8 8 ~ 8 4 d8 | g4 e e d8 g ~ | 8 8 e8 8 ~ 8 4 d8 | 
	f4 d8 8 ~ 8 4 c8 | e4 c8 8 ~ 8 4 bf8 | r4 c2. | R1 | 

	g'4 e8 8 ~ 4 d8 g ~ | 4 e8 8 ~ 8 8 d4 | g4 e e d | g4 e8 8 ~ 8 8 r4 | 
	d8 f d8 8 ~ 8 8 c e ~ | e4. c8 \tuplet 3/2 { c4 4 bf } | r4 c2. | R1 | 

	es1 ~ | 8 fs es ds ~ 8 es ds4 | cs4. ds8 ~ 2 ~ | 2 r |
	gs1 ~ | 8 a gs fs ~ 8 gs fs e ~ | 4. fs8 ~ 2 ~ | 2 r |
	a2.. 8 ~ | 8 b a4 g8 a4 f8 ~ | f8 g2.. | r2 r8 a b [ c ] ~ |
	\tuplet 3/2 { c4 c, d } e8 f g gs ~ | 2. r8 a | bf4 bf,8 c \tuplet 3/2 { d4 e f } | fs1 ||

	g4. e8 4 d8 g ~ | 4 e8 8 ~ 8 4 d8 | g4 e e d8 g ~ | 8 8 e8 8 ~ 8 4 d8 | 
	r8 a' f8 [ 8 ] ~ 8 8 d c' ~ | 4. e,8 8 8 d e ~ | 1 | R1 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Tall and tan and young and love -- ly, 
    The Girl from I -- pa -- ne -- ma goes walk -- ing, 
    and when she pas -- ses, 
    each one she pas -- ses goes \markup { "\"ah!\"" } 

    When she walks she's like a sam -- ba 
    that swings so cool and sways so gen -- tle, 
    that when she pas -- ses, 
    each one she pas -- ses goes \markup { "\"ah!\"" } 

    Oh, but I watch her so sad -- ly.
    How can I tell her I love her?
    Yes, I would give my heart glad -- ly,
    but each day when she walks to the sea,
    she looks straight a -- head not at me.

	Tall and tan and young and love -- ly, 
    The Girl from I -- pa -- ne -- ma goes walk -- ing, 
    and when she pas -- ses, I smile,  
    but she does -- n't see.
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

\book {
  \bookOutputSuffix "in-Db-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f, df <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForTransposing
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
  \bookOutputSuffix "in-Db-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose f, df <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForTransposing
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
  \bookOutputSuffix "in-Db-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c \transpose f, df <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForTransposing
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



