\version "2.19.83"

composerName = "Marten/Blane"
lyricistName = "Marten/Blane"
titleLeft = "Have Yourself A"
titleRight = "Merry Little Christmas"
title = "Have Yourself A Merry Little Christmas"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm have-yourself-a-merry-little-christmas*pdf ; lilypond ly/songs/holiday/have-yourself-a-merry-little-christmas.ly ; for file in have-yourself-a-merry-little-christmas*pdf ; do op $file ; done 

killPreview
rm pdf/songs/holiday/have-yourself-a-merry-little-christmas*
lilypond ly/songs/holiday/have-yourself-a-merry-little-christmas.ly 
mv have-yourself-a-merry-little-christmas*pdf pdf/songs/holiday
for file in pdf/songs/holiday/have-yourself-a-merry-little-christmas*pdf ; do op $file ; done 

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

	\bar "[|:"
	\repeat volta 2 { 

		s1*2 \break 
		s1*2 s2... \toCoda s16  
		\break

	} \alternative {
		{ 
			s1*3 
			\bar ":|]" \noBreak
		} {
			s1*3 
			\bar "||" \break
		}
	}

	s1*4 \break 
	s1*4 
	\bar "||" \break
}

structureCoda = \relative c' {

	\key c \major
    \mark \partCoda
    s1*3 \break 
    s1*4
	\bar "|."
}


songChords = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	c2 a:m7 | d:m7 g:sus4.7 | 
	c a:7 | d:m7 g:7 | 

	c: a:m7 | 

		d:m7 b:m7.5- | e:7 a:7 | d:m7 g:7 ||
		b:m7.5- e:7 | a1:m7 | g:m7 ||


	f2:maj7 f:m6 | e:m7 ef:dim7 | 
	d:m7 g4:sus4 g:7 | c1:maj7 | 

	fs2:m7.5- b:7.9- | e:m7 a:7 | 
	a:m7 d:9 | d:m7 g:7 || 
} 

codaChords = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	b2:m7.5- e:7.9- | a:m7 af:aug7 | g:m7 gf:7 | 
	f1:maj7 | d2:m7 g:7 | c1 | 1 ||

}


songChordsForFlats = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	c2 a:m7 | d:m7 g:sus4.7 | 
	c a:7 | d:m7 g:7 | 

	c: a:m7 | 

		d:m7 b:m7.5- | e:7 a:7 | d:m7 g:7 ||
		b:m7.5- e:7 | a1:m7 | g:m7 ||


	f2:maj7 f:m6 | e:m7 ds:dim7 | 
	d:m7 g4:sus4 g:7 | c1:maj7 | 

	fs2:m7.5- b:7.9- | e:m7 a:7 | 
	a:m7 d:9 | d:m7 g:7 || 
} 

codaChordsForFlats = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	b2:m7.5- e:7.9- | a:m7 gs:aug7 | g:m7 fs:7 | 
	f1:maj7 | d2:m7 g:7 | c1 | 1 ||

}

melodyForm = \relative c' {
	
	c4 e g c | g8 f e d  c4 d | 
	c4 e g c | g1 |	

	e4 g c e | 

			d8 c b a  g4 a | e1 ~ | 1 ||
			\relative c'' { d8 c b a gs4 b | c1 ~ | 1 || }

	\relative c'' { 

		e4 4 4 d8 c | b c d2 c8 b | 
		a8 b c2 b4 | b1 | 

		c4 4 4 b8 a | g a b2 g8 a | 
		b8 c d2 d,4 | f1 || 
	}
}

melodyCoda = \relative c'' {

	f8 e d c b4 d | e1 ~ | 2. 4 | 
	e4 f, a c | e8 d c b a4 b | 
	c1 ~ | 1 ||

}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	Have your -- self a mer -- ry lit -- tle Christ -- mas,
	let your heart be light,
	from now on, our 

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	Have your -- self a mer -- ry lit -- tle Christ -- mas,
	make the yule -- tide gay,
	from now on, our 

	trou -- bles will be out of sight

	trou -- bles will be far a -- way

		Here we are as in ol -- den days,
		hap -- py gol -- den days of yore,
		faith -- ful friends who are dear to us
		Ga -- ther near to us once more

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	Through the years we all will be to -- ge -- ther
	if the fates al -- low,
	hang a shi -- ning 
}
lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	star u -- pon the high -- est bough,
	and have your -- self a mer -- ry lit -- tle Christ -- mas now
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose c c <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose bf, c \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose ef, c \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-C"
    \header {
    	subtitle = "(key of F)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c f <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-Bb"
    \header {
    	subtitle = "(key of F)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose c f <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose bf, c \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
    	subtitle = "(key of F)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c \transpose c f <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
    \score {
        \transpose ef c \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \codaChords
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda  
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}
