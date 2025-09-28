\version "2.24.0"

titleLeft = "Finger"
titleRight = "Poppin'"
titleFull = "Finger Poppin'"
composerName = "H. Silver"
arranger = ""
copyright = ""

%{

killPreview ; rm finger-poppin*pdf ;  lilypond ly/songs/jazz/finger-poppin.ly  ; for file in finger-poppin*.pdf ; do op $file ; done  

killPreview
rm finger-poppin*pdf
lilypond ly/songs/jazz/finger-poppin.ly
mv finger-poppin*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/finger-poppin*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 

    \key bf \major
    \tempo 2=110

    \startSection "Intro"
    s1*8

    \startSection "A"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 \break }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8
    \endBar

}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 8 . 0 )
    % "Intro"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "A"
    s1*4 \break
    s1*3
    s1
    s1

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    s1*4 \break
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s1*8 

    s1*8 s1
    s1*8
    s1*8
}


melodyIntro = \relative c' { 
    <f bf,>4 r r r8 <f b,> | r4 <f b,>4 4 8 <f c> |
    r2 r4 r8 <df> | r4 <df>8 <c> <b>4. <b>8 | 
    <bf>4 r r <bf,>4 | r <bf>4 4 8 <b> ~ | 
    <b>1 ~ | 2 r4  
}


melodyA = \relative c' { 
    r8 f8 || 
    af8 8 8 8  4 bf, | ef4 4  f8 ef bf df | R1 | R1 | 
    r4 bf8 df  e f e df | bf df e f  e df bf af | 
    bf4 r r2 | r2 r4 r8 f' || r2 r4 <d fs,>4 ||

    <f bf,>2. <d fs,>4 | <f bf,>4. <d fs,>8 r4 <cs fs,> ~ | 1 ~ | 2 r4 cs | 
    as4 b ds fs | as4. gs8 r4 cs ~ | 1 | <f, bf,>4 r8 <af df,>8 ~ 4   


    r8 f8 || 
    af8 8 8 8  4 bf, | ef4 4  f8 ef bf df | R1*2 | 
    r4 bf8 df  e f e df | bf df e f  e df bf af | 
    bf4 \comp #7 ||
}
melodyAForFlats = \relative c' { 
    r8 f8 || 
    af8 8 8 8  4 bf, | ef4 4  f8 ef bf df | R1*2 | 
    r4 bf8 df  e f e df | bf df e f  e df bf af | 
    bf4 r r2 | r2 r4 r8 f' || r2 r4 <d gf>4^\markup { \small "Tenor" }_\markup { \small "Trumpet" }  ||

    <f bf>2. <d gf>4 | <f bf>4. <d gf>8 r4 <df gf> ~ | 1 ~ | 2 r4 df | 
    bf4 cf ef gf | bf4. af8 r4 df ~ | 1 | <f, bf>4^\markup { \small "Tenor" }_\markup { \small "Trumpet" }  r8 <af df>8 ~ 4   


    r8 f8 || 
    af8 8 8 8  4 bf, | ef4 4  f8 ef bf df | R1*2 | 
    r4 bf8 df  e f e df | bf df e f  e df bf af | 
    bf4 \comp #7 ||
}

melody = {
    R1*7 | r2 r4
    \melodyA 
}
melodyForFlats = {
    R1*7 | r2 r4
    \melodyAForFlats
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}



