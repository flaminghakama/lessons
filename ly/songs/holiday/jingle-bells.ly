\version "2.19.83"

composerName = "J. Pierpont"
lyricistName = "J. Pierpont"
titleLeft = "Jingle"
titleRight = "Bells"
title = "Jingle Bells"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm jingle-bells*pdf ; lilypond ly/songs/holiday/jingle-bells.ly ; for file in jingle-bells*pdf ; do op $file ; done 

killPreview
rm pdf/songs/holiday/jingle-bells*
lilypond ly/songs/holiday/jingle-bells.ly 
mv jingle-bells*pdf pdf/songs/holiday
for file in pdf/songs/holiday/jingle-bells*pdf ; do op $file ; done 

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
	\bar "[|:"
	\repeat volta 2 { 

        s1*5 
	} \alternative {
		{ 
			s1*3
			\bar ":|]" 
		} {
			s1*3 \break
			\bar "[|:" 
		}
	}
    \startSection "Bridge"
    \repeat volta 2 { 
        \bar "[|:" 
        s1*6
    } \alternative {
        { 
            s1*2
            \bar ":|]" 
        } {
            s1*2 \break
        }
    }
    \bar "|."

}

songChords = \chordmode { 
    
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    c1 | s | s | f | 
    d1:m | g:7 | s | c || g:7 | s | c ||

    c1 | s | s | s | 
    f1 | c | d:7 | g2 g:7 || g1:7 | c ||
} 

melodyForm = \relative c'' {
    g4 e' d c | g2. 8 8 | 4 e' d c | a1 | 
    a4 f' e d | b1 | g'4 4 f d | e1 || g4 4 4 4 | a g f d | c2. r4 ||

    e4 4 2 | 4 4 2 | 4 g c,4. d8 | e1 | 
    f4 4 4. 8 | 4 e4 4 8 8 | e4 d d e | d2 g || g4 4 f d | c1 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Dash -- ing through the snow, 
    in a one- horse o -- pen sleigh,
    O'er the fields we go, 
    laugh -- ing all the way.

    ride and sing a 
    sleigh -- ing song to -- night.

    Jin -- gle Bells, Jin -- gle Bells, 
    Jin -- gle all the way!

    Oh, what fun it is to ride 
    in a one- horse o -- pen sleigh!  Oh, 
    one- horse o -- pen sleigh.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Fells on bob -- tail ring, 
    \repeat unfold 2 { \skip 1 }
    Mak -- ing spir -- its bright,what 
    fin it is to 
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
        \transpose ef c \transpose c c <<
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
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Frank Sinatra key)"
    }
    \score {
        \transpose c ef, <<
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
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Frank Sinatra key)"
    }
    \score {
        \transpose bf c \transpose c ef <<
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
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Frank Sinatra key)"
    }
    \score {
        \transpose ef c \transpose c ef <<
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

