\version "2.19.81"

titleLeft = "Fly Me "
titleRight = "To The Moon"
title = "Fly Me To The Moon"
composerName = "Bart Howard"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

%{

killPreview
rm fly-me-to-the-moon*pdf
lilypond ly/songs/standards/fly-me-to-the-moon*.ly
mv fly-me-to-the-moon*.pdf pdf/songs/standards
for file in pdf/songs/standards/fly-me-to-the-moon*pdf ; do open -a Preview $file ; done

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

toCoda = <>^\markup { \translate #'( -2 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7.9- | a2:m7 a:7.9- | 

	d1:m7 | g:7.9- | c | a:m | 
	d1:m7 | g:7 | f2:dim7/c c | b:m7 e:7 | 


	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7.9- | a2:m7 a:7.9- | 

	d1:m7 | g:7.9- | 

		e:m7.5- | a:7.9- | 
	d:m7 | g:7.9- | c1 | b2:m7 e:7 | 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

		e2:m7.5- bf:9 | a1:7.9- | 
	d:m7 | g:7.9- | c2 bf4:6 b:7 | c1 | 
}


melodyHead = \relative c'' { 
	\key c \major
	c4 b a8 g4. | f4. g8 a4 c | b a g8 f4. | e1 | \break
	a4 g f8 e4. | d4. e8 f4 a | gs4 f e8 d4. | c2. 

	cs4 | \break d8 a'4 8 ~ 2 ~ | 4 c2 b4 | g1 ~ | 2. 
	b,4 | \break c8 f4 8 ~ 2 ~ | 4 a2 g4 | f2 e ~ | 1 | \bar "||" \break

	c'4 b a8 g4. | f4. g8 a4 c | b a g8 f4. | e1 | \break
	a4 g f8 e4. | d4 e f a | gs4 f e8 d4. | c2. 

	cs4 | \break d8 a'4 8 ~ 2 ~ | 4 c2 b4 | 
	\toCoda

		g1 ~ | 2. 
	gs4 | \break a8 c,4 8 ~ 2 ~ | 4 2 d4 | c1 | R1 | \bar "||"
}

melodyCoda = \relative c'' { 
	\atCoda
	e1 ~ | 2. c4 | \break d8 a4 8 ~ 2 ~ | 4 b2 d4 | 
	c1 ~ | 2. r4 \bar "|." 

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


lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    true.

	In o -- ther words,
	I love you!
}

\book {
	\bookOutputSuffix "in-C"

    \header {
    	title = "Fly Me To The Moon"
        subtitle = "Key of C"
    	composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
        	\new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c c { 
                    	\autoPageBreaksOff
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsCoda }
        	\new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c c { 
                    	\autoPageBreaksOff
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
    \bookOutputSuffix "in-A"

    \header {
    	title = "Fly Me To The Moon"
        subtitle = "Key of A"
    	composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c a { \chordsHead }
        	\new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c a { 
                    	\autoPageBreaksOff
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c a { \chordsCoda }
        	\new Staff = "voice" { 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c a { 
                    	\autoPageBreaksOff
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
    \bookOutputSuffix "in-Eb"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of Eb"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c ef { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c ef { 
                        \autoPageBreaksOff
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c ef { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c ef { 
                        \autoPageBreaksOff
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}


\book {
    \bookOutputSuffix "in-Gb"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of Gb"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c gf { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c gf { 
                        \autoPageBreaksOff
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c gf { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c gf { 
                        \autoPageBreaksOff
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

% Hidden 


\book {
    \bookOutputSuffix "in-C-blank"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of C"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c c { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c c { 
                        \autoPageBreaksOff 
                        \hideNotes
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
    \bookOutputSuffix "in-A-blank"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of A"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c a { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c a { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c a { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c a { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
    \bookOutputSuffix "in-Eb-blank"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of Eb"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c ef { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c ef { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c ef { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c ef { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}


\book {
    \bookOutputSuffix "in-Gb-blank"

    \header {
        title = "Fly Me To The Moon"
        subtitle = "Key of Gb"
        composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c gf { \chordsHead }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c gf { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyHead
                        \noPageBreak
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        <<
            \new ChordNames \transpose c gf { \chordsCoda }
            \new Staff = "voice" { 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \override DynamicLineSpanner #'staff-padding = #3.0
                \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c gf { 
                        \autoPageBreaksOff
                        \hideNotes
                        \melodyCoda
                    }
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}
