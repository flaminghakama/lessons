\version "2.19.81"

titleLeft = "Chord"
titleRight = "Exercises"
title = "Chord Exercises"
composerName = "D. Elaine Alt"

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

\layout {
    \context {
        \Score
        \omit BarNumber
    }
}

chordsA = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7 | a:7 | 

	d1:m7 | g:7 | c | a:m | 
	d1:m7 | g:7 | c | b2:m7 e:7 | 
}
chordsB = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7 | a2:m7 a:7 | 

	d1:m7 | g:7 | 

		e:m7.5- | a:7 | 
	d:m7 | g:7 | c1 | b2:m7 e:7 | 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

		e2:m7.5- bf:9 | a1:7.9- | 
	d:m7 | g:7.9- | c2 bf4:6 b:7 | c1 | 
}

exerciseARootPosition = \relative c'' { 
    \key c \major
    <a c e g>1 | <d, f a c> | <g b d f> | <c, e g b> | \break
    <f a c e> | <b d f a> | <e, gs b d> | <a cs e g> | \break

    <d, f a c> | <g b d f> | <c, e g b> | <a' c e g> | \break
    <d, f a c> | <g b d f> | <c, e g b> | <b d fs a>2 <e gs b d> |
}

exerciseAOnTheStaff = \relative c'' { 
	\key c \major
    <a c e g>1 | <a c d f> | <g b d f> | <g b c e> | \break
    <f a c e> | <f a b d> | <e gs b d> | <g a cs e> | \break

    <a c d f> | <g b d f> | <g b c e> | <g a c e> | \break
    <a c d f> | <g b d f> | <g b c e> | <a b d fs>2 <gs b d e> |
}

exerciseACommonTones = \relative c''' { 
    \key c \major
    g8 e g e  c a c a | a c a c  d f d f | f d f d  b g b g | g b g b   c e c e | \break
    e c e c  a f a f | f a f a  b d b d | d b d b  gs e gs e | e g? e g   a cs a cs | \break

    c? a c a  f d f d | d f d f  g b g b | b g b' g  e c e c | c e c e  g a g a | \break
    c a c a  f d f d | d f d f  g b g b | b g b g  e c e c | fs d b a  d b gs e |
}

exerciseARunningChanges = \relative c'' { 
    \key c \major
    a8 c e g  a g e c | d f a c  d c a f | g, b d f  g f d b | c e g b  c b g e | \break
    f, a c e  f e c a | b d f a  b a f d | e, gs b d  e d b gs | a cs e g  a g e cs | \break

    d f a c?  d c a f | g, b d f  g f d b | c, e g b  c b g e | a c e g  a g e c | \break
    d, f a c?  d c a f | g b d f  g f d b | c e g b  c b g e  | b d fs a  e, gs b d |
}

exerciseAAscending = \relative c'' { 
    \key c \major
    a8 e g a  c e g a | d, f, a c  d f a c | g g, b d  f g b d | c g, b c  e g b c | \break
    f, e, f a  c e f a | b d,, f a  b d f a | e d, e gs  b d e gs | a e, g a  cs e g a | \break

    d d,, f a  c? d f a | g f, g b  d f g b | c e,, g b  c e g b | a c,, e g  a c e g | \break
    d d, f a  c? d f a | g d, f g  b d f g | c c,, e g  b c e g | b d,, fs a  e gs b d |
}

exerciseADescending = \relative c''' { 
    \key c \major
    a8 g e c  a g e c | d'' c a f  d c a f | g' f d b  g f d b | c'' b g e  c b g e | \break
    f' e c a  f e c'' a  | b a f d  b a f d | e' d b gs  e d b'' gs | a g e cs  a g e cs | \break

    d c'' a f  d c a f | g b' g f  d b g f | e c'' b g  e c b g| a c' a g  e c a g | \break
    d d'' c a  f d c a | g d'' b g  f d b g | c g' e c  b g e c | b' a fs d   e' d b gs |
}


\book {

    \bookOutputSuffix "in-C"

    \header { 
        title = "Chord Exercises"
        subtitle = "for Fly Me to the Moon in C"
        composer = "D. Elaine Alt"
    }

    \score {
        \header {
            piece = "Root Position Chords"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
        	\new Staff = "voice" { 
	            \set Staff.instrumentName = ""
	            \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseARootPosition
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        \header {
            piece = "Inverted Chords"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
            \new Staff = "voice" { 
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseAOnTheStaff
                        \pageBreak
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        \header {
            piece = "Running Changes"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
            \new Staff = "voice" { 
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseARunningChanges
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }


    \score {
        \header {
            piece = "Common Tones"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
            \new Staff = "voice" { 
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseACommonTones
                        \pageBreak
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }


    \score {
        \header {
            piece = "Ascending Arpeggios"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
            \new Staff = "voice" { 
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseAAscending
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

    \score {
        \header {
            piece = "Descending Arpeggios"
        }
        <<
            \new ChordNames \transpose c c { \chordsA }
            \new Staff = "voice" { 
                \set Staff.instrumentName = ""
                \set Staff.shortInstrumentName = #""
                \new Voice = "lead" {
                    \transpose c c { 
                        \exerciseADescending
                    }
                }
            }
        >>
        \layout { 
            indent = 1.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}
