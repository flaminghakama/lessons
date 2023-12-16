\version "2.19.83"

composerName = "J. Marks"
lyricistName = "J. Marks"
titleLeft = "Rudolph the"
titleRight = "Red-Nosed Reindeer"
title = "Rudolph the Red-Nosed Reindeer"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm rudolph-the-red-nosed-reindeer*pdf ; lilypond ly/songs/holiday/rudolph-the-red-nosed-reindeer.ly ; for file in rudolph-the-red-nosed-reindeer*pdf ; do op $file ; done 

killPreview
rm pdf/songs/holiday/rudolph-the-red-nosed-reindeer*
lilypond ly/songs/holiday/rudolph-the-red-nosed-reindeer.ly 
mv rudolph-the-red-nosed-reindeer*pdf pdf/songs/holiday
for file in pdf/songs/holiday/rudolph-the-red-nosed-reindeer*pdf ; do op $file ; done 

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
  score-system-spacing.minimum-distance = #22


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
	
	\time 4/4
	\key c \major

    \startSection "Verse"
    \partial 4 
    s4

    s1*8

    \startSection "Chorus"
	\bar "[|:"
	\repeat volta 2 { 

        s1*6 
	} \alternative {
		{ 
			s1*2
			\bar ":|]" 
		} {
			s1*2 \break
			\bar "|." 
		}
	}
    \startSection "Bridge"
    s1*8


    \startSection "Chorus"
    s1*10
    \bar "|."

}

songChords = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 ||

    d2:m e:m | g:7 c | 
    d2:m e:m | g:7 c | 
    a2:m e:7 | a1:m  |
    a2:m7 d:7 | g1:7 || 

    c1 | s | s | g:7 | 
    g1:7 | s | g1:7 | c || g:7 | c2 c:7 ||

    f1 | c | d2:m g:7 | c1 | 
    g1 | g | d:7 | g:7 ||

    c1 | s | s | g:7 | 
    g1:7 | s | s | s | 
    c1 | s ||
} 

melodyForm = \relative c'' {
    a8 b ||
    c8 a4 f8 b g4 e8 | a f4 d8 a' g4. | 
    c8 a4 f8 b g4 e8 | a f4 d8 a' g4. | 
    e4 4 4 4 | a2. 8 b | 
    c4 4 8 b4 a8 g1 ||

    g8 a4 g8 e4 c' | a g2. | 
    g8 a g a g4 c | b1 | 
    f8 g4 f8 d4 b' | a g2. |
    g8 a g a g4 a | e1 || g8 a g a g4 d' | c1 ||

    a4 4 c a | g e g2 | 
    f4 a g f | e1 | 
    e4 e g a | b4 4 2 | 
    c4 4 b a | g f8 d ~ 2 | 

    g8 a4 g8 e4 c' | a g2. | 
    g8 a g a g4 c | b1 | 
    f8 g4 f8 d4 b' | a g2. |
    g4 a g a | g2 d' | c1 ~ | 2. r4 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You know Dash -- er and Danc -- er 
    and Pranc -- er and Vix -- en, 
    Com -- et and Cu -- pid and Don -- ner and Blitz -- en, 
    but do you re -- call 
    the most fa -- mous rein -- deer of all?

    Ru -- dolph the red -- nosed rein -- deer 
    had a ver -- y shin -- y nose 
    And if you e -- ver saw it 
    you would e -- ven say it glows.

    play in an -- y rein -- deer games.

    Then one fog -- gy Christ -- mas Eve, 
    San -- ta came to say
    "\"Ru" -- dolph, with your nose so bright,
    won't you guide my sleight to -- "night?\""

    Then how the rein -- deer loved him
    as they shout -- ed out with glee:
    "\"Ru" -- dolph the red nosed rein -- deer
    you'll go down in his -- to -- "ry!\""
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

     \repeat unfold 37 { \skip 1 }

     All of the o -- ther rein -- deer
     used to laugh and call him names 
     they ne -- ver let poor Ru -- dolph 
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-C-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(key of C)"
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(key of C)"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(key of C)"
    }
    \score {
        \transpose ef, c \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Gene Autry key)"
    }
    \score {
        \transpose c g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Gene Autry key)"
    }
    \score {
        \transpose c g \transpose bf c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}


\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Gene Autry key)"
    }
    \score {
        \transpose ef c \transpose c g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \songChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

