\version "2.19.81"

titleLeft = "Duke Ellington's"
titleRight = "Sound Of Love"
title = "Duke Ellington's Sound Of Love"
composerName = "C. Mingus"

%{

killPreview ; rm duke-ellingtons-sound-of-love*pdf ;  lilypond ly/songs/jazz/duke-ellingtons-sound-of-love.ly  ; for file in duke-ellingtons-sound-of-love*.pdf ; do op $file ; done  

killPreview
rm duke-ellingtons-sound-of-love*pdf
lilypond ly/songs/jazz/duke-ellingtons-sound-of-love.ly
mv duke-ellingtons-sound-of-love*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/duke-ellingtons-sound-of-love*.pdf ; do op $file ; done  

git add . ; git commit -m"actual first working version of sound of love" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl


%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \key df \major 
    \tempo 4=56
    \time 4/4
    s1 
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break 
    s1*4 \break
    s1*4 \break
    s1*4
    \bar ":|]"
}

rehearsalMarkTweaksForC = \relative c' { 
    s2 
    \override Score.RehearsalMark #'extra-offset = #'( -1.6 . 1 )
    % "A"
    s1*11
    
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    % "B"
    s1*12    
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsA = \chordmode { 
    af1:13.9- ||
    df:maj7.9 | af:13.-9 | df:maj7.9 | f:7.8+.9+ | 
    bf1:7.9- | gf:7.9- | df:maj7.9 | bf1:7.9- | 
    ef1:m9 | af:13 | e4:maj7 ef:13 d:maj7 af:7.5- | df1:maj7.9 ||
}
chordsAForBb = \chordmode { 
    \chordsA
}
chordsAForEb = \chordmode { 
    \chordsA
}
chordsB = \chordmode { 
    fs2:m7.5- b:7 | e:maj7 cs:m7 | e:m7 a:9 | d1:maj7.9 | 
    d2:m7 g:9 | c1:maj7 | a2:7.5- bf4:7.5- ef:13 | af2:maj7 af:7 | 
    bf2:13 ef:13 | af:maj7 d:9 | df1:maj7.9 | gf:13 |  
    f1:m7 | bf:7.5- | ef:m7.5- | af:13 | 
    e4:maj7 ef:maj7 d:maj7 af:7.5- | df1:maj7.9 | d:maj7.9 | af:13.9- ||
}
chordsBForBb = \chordmode { 
    \chordsB
}
chordsBForEb = \chordmode { 
    \chordsB
}
chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsA 
    \chordsB
}
chordsFormForBb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAForBb
    \chordsBForBb
}
chordsFormForEb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAForEb
    \chordsBForEb
}

melodyIntro = \relative c'' {
    \once \override Staff.NoteHead.style = #'slash
    bf2.
}

melodyA = \relative c' {
    \tuplet 3/2 { r8 c df } | ef2.. df8 | f8 4. ~ 4 
    \tuplet 3/2 { r8 c df } | ef2 ~ 8 c df f | af gf4. ~ 4  
    \tuplet 3/2 { r8 f gf } | cf2. ~ \tuplet 3/2 { cf8 bf af } | ff8 4. ~ 4 
    r8 a | bf4. af8 \tuplet 3/2 { f4 df c } | cf2 r4
    a8 bf | f'8 4. ~ 4 \tuplet 3/2 { r8 a, bf } | f'8 af16 f ~ 4 ~ 4
    r8 af, | b4 c df d | ef2. r4 || 
}
melodyAForBb = \relative c'' {
    \melodyA
}
melodyAForEb = \relative c'' {
    \melodyA
}


melodyB = \relative c'' {
    b2.. a8 | gs2. r8. e16 | \tuplet 3/2 { g4 4 4 } \tuplet 3/2 { g4 \glissando b a } | fs2. r4 | 
    \tuplet 3/2 2 { f4 d e f a g } | e2 \breath e8 g b c | ef2 e,4 c' | ef,4. f8 gf4 
    r8 f8 | e f g af  a bf c df | ef2 \breath e,4 c' | ef2 f,4 af | ef'2 \breath e,4 af | 
    ef'2 ef,4 c' | e,2 \breath f4 gf | af8 4. a,4 df | f8 4. ~ 4
    r8 af, | b4 c df d | ef4. df8 ef2 |  e1*1/2 s2_\markup { \italic "Fine" }  | R1 || 
}
melodyBForBb = \relative c' {
    \melodyB
}
melodyBForEb = \relative c' {
    \melodyB
}

melody = \relative c' { 
    \accidentalStyle default
    \melodyIntro
    \melodyA
    \melodyB
}

melodyForBb = \relative c' { 
    \transpose c bf, \melodyIntro
    \melodyA
    \melodyB
}

melodyForAlto = \relative c' { 
    \transpose c ef, \melodyIntro
    \melodyA
    \melodyB
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
        <<
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new Staff = "lead" \transpose g g {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
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
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsFormForBb
            }
            \new Staff = "lead" \transpose g g {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melodyForBb
                >>
            }
        >>
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
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsFormForEb
            }
            \new Staff = "lead" \transpose g g {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForAlto
                >>
            }
        >>
    }
}

