\version "2.19.81"

titleLeft = "Fly Me To The "
titleRight = "Moon - Improv Exercise"
title = "Fly Me To The Moon - Improv Exercise"
composerName = "Bart Howard"

\include "../../scores/flaming-libs/flaming-paper.ily"
\include "../../scores/flaming-libs/flaming-markup.ily"
\include "../../scores/flaming-libs/flaming-chords.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #16.5

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #19

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
	d1:m7 | g:7 | c1 | b2:m7 e:7 | 


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
    \bar "[|:"
	r2 \comp #2 | \comp #4 | b4 a g8 f4. | e2 r2 | \break
    r2 \comp #2 | \comp #4 | gs4 f e8 d4. | c2 r2 | \break

    \comp #4 | \comp #1 c'2 b4 | g1 ~ | 2 r2 | \break
    \comp #4 | \comp #1 a2 g4 | f2 e ~ | 2 r2 \bar "||" \break

    r2 \comp #2 | \comp #4 | b'4 a g8 f4. | e1 | \break
    r2 \comp #2 | \comp #4 | gs4 f e8 d4. | c2 r2 | \break

    \comp #4 | \comp #1 c'2 b4 | g1 | \toCoda
        r2 \comp #2 | \break

    \comp #4 | r4 c,2 d4 | c1 | b8 d e fs gs2 \bar ":|]" 
}

melodyCoda = \relative c'' { 
	\atCoda
	r2 \comp #2 | \comp #3 c4 | d8 a4 8 ~ 2 ~ | \break 4 b2 d4 | 
    c1 ~ | 2. r4 \bar "|." 

}

lyricsHead = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

	
    play a -- mong the stars;

    Ju -- pi -- ter and Mars.

    hold my hand!

    dar -- ling kiss me!


    sing for -- ev -- er more;

    wor -- ship and a -- dore.

    please be true

    I love you
}


lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    In o -- ther words,
	I love you!
}

\book {
	\bookOutputSuffix "in-C"

    \header {
    	title = "Fly Me To The Moon - Improv Exercise"
        subtitle = "Key of C"
    	composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
        	\new Staff = "voice" { 
                \numericTimeSignature 
	            \compressFullBarRests
	            \override MultiMeasureRest.expand-limit = #1
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
	            \override DynamicLineSpanner #'staff-padding = #3.0
	            \accidentalStyle modern-voice-cautionary
                \new Voice = "lead" {
                    \transpose c, c { 
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
                \numericTimeSignature 
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
        title = "Fly Me To The Moon - Improv Exercise"
        subtitle = "Key of A"
    	composer = "Bart Howard"
        poet = "Lead Sheet"
        instrumentName = \poet
    }

    \score {
        <<
            \new ChordNames \transpose c a { \chordsHead }
        	\new Staff = "voice" { 
                \numericTimeSignature 
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
                \numericTimeSignature 
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
        title = "Fly Me To The Moon - Improv Exercise"
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
        title = "Fly Me To The Moon - Improv Exercise"
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

