\version "2.19.83"

composerName = "Trad."
lyricistName = "Trad."
titleLeft = "God Rest,"
titleRight = "Ye Merry Gentlemen"
title = "God Rest, Ye Merry Gentlemen"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm god-rest-ye-merry-gentlemen*pdf ; lilypond ly/songs/holiday/god-rest-ye-merry-gentlemen.ly ; for file in god-rest-ye-merry-gentlemen*pdf ; do op $file ; done 

killPreview
rm pdf/songs/holiday/god-rest-ye-merry-gentlemen*
lilypond ly/songs/holiday/god-rest-ye-merry-gentlemen.ly 
mv god-rest-ye-merry-gentlemen*pdf pdf/songs/holiday
for file in pdf/songs/holiday/god-rest-ye-merry-gentlemen*pdf ; do op $file ; done 

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
	\key f \minor

    \partial 4 
    s4

	\bar "[|:"
	\repeat volta 2 { 

        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
		s1*2 
	} \alternative {
		{ 
			s1*2
			\bar ":|]" 
		} {
			s1*2
			\bar "|." 
		}
	}
}

songChords = \chordmode { 

    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 ||

    f2:m7 ef:7 | df:maj7 c:m7 | 
    f2:m7 ef:7 | df:maj7 c:m7 | 

    f2:m7 ef:7 | df:maj7 c:m7 | 
    f2:m7 ef:7 | df:maj7 c:7.9- | 

    bf2:m7 ef:7 | af:maj7 df:maj7 | 
    g2:7 df:7 | c:7.9- gf:7 | 

    f1:m7 | g2:m7.5- c:7 |
    f2:m7 d:m7.5- | df:7 c:7 | 

    f2:m7 bf:7 | g:m7.5- c:7 |
    f1:m7 | c:7 ||  f1:m7 | s ||
} 

melodyForm = \relative c' {
    f4 || 
    f4 c' c bf | af g f ef | f g af bf | c2. f,4 | 
    f4 c' c bf | af ( g ) f ef | f g af bf | c2. 4 | 

    df4 bf c df | ef f c bf | af f g af | bf2 af4 ( bf ) |
    c2 df4 c | c ( bf ) af g | f2 af8 g f4 | bf2 af4 ( bf ) | 

    c4 ( df ) ef f | c ( bf ) af g | f1 | r2 r4 f4 ||  f1 ~ | 1 ||

}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    God rest ye mer -- ry gen -- tle -- men
    Let noth -- ing you dis -- may
    Re -- mem -- ber Christ our Sav -- ior
    Was born on Christ -- mas Day
    To save us all from Sa -- tan's pow'r
    When we were gone as -- tray
    Oh ti -- dings of com -- fort and joy
    Com -- fort and joy
    Oh ti -- dings of com -- fort and joy
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    In Beth -- le -- hem, in Is -- ra -- el
    This bles -- sed Babe was born
    And laid with -- in a man -- ger
    U -- pon this bles -- sed morn
    The which His Mo -- ther M -- a -- ry
    Did noth -- ing take in scorn

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Fear not then, said the A -- n -- gel
    Let noth -- ing you aff -- right
    This day is born a Sav -- ior
    Of a pure Vir -- gin bright
    To free all those who trust in Him
    From Sa -- tan's pow'r and might
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-F-minor-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(fb key)"
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
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-minor-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(fb key)"
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
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-minor-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(fb key)"
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadThree
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
  \bookOutputSuffix "in-B-minor-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f b <<
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
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-B-minor-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose f b <<
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
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-minor-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c \transpose f b <<
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
            indent = 1.25\cm
            short-indent = .25\cm
        }
    }
}

