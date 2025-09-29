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
        \tempo "Two Feel"
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


chordRhythm =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    <>^\markup { " " } 
    c4 r r r8 c | r4 c4 4 8 8 |
    r2 r4 r8 c | r4 c8 8 4. 8 | 
    c4 r r c4 | r c4 4 8 8 ~ | 1:32 ~ | 2:32 4-> r

    s1*2 | r2 c4 r | c4 r8 c8 r4 c4  | 
    s1*2 | r2 c4 r | c4 r8 c8 r4 c4  || c4 r8 c8 r2  || 


    r2 c2 | 4. 8 ~ 2 | r2 c2 | 4. 8 ~ 2 | 
    c2 2 | 4. 8 ~ 4 4 ~ | 1 | 4 r8 c8 ~ 2 ||

    s1*2 | r2 c4 r | c4 r8 c8 r4 c4  | 
    s1*2 | c4 r4 r2 | R1 ||
}


melodyIntro = \relative c' { 
    f4 r r r8 f | r4 f4 4 8 8 |
    r2 r4 r8 f | r4 f8 8 4. 8 | 
    f4 r r bf,4 | r bf4 4 8 a! ~ | 
    a1 ~ | 2 r4  
}

harmonyIntro = \relative c' { 
    bf4 r r r8 b | r4 b4 4 8 c |
    r2 r4 r8 df | r4 df8 c b4. b8 | 
    bf4 r r bf,4 | r bf4 4 8 b ~ | 
    b1 ~ | 2 r4  
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
    \transpose c, c << 
        \melodyIntro 
        \harmonyIntro 
    >>
    \melodyA 
}
melodyForFlats = {
    <>^\markup { \small "Tenor" }_\markup { \small "Trumpet" }
    << 
        \transpose c, c \harmonyIntro 
        \melodyIntro 
    >>
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
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                %\override Score.BarLine.break-visibility = ##(#f #f #f)
                \chordRhythm
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



