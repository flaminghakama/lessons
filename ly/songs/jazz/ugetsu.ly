\version "2.19.81"

titleLeft = "Ugetsu"
titleRight = ""
title = "Ugetsu"
composerName = "C. Walton"

%{

killPreview ; rm ugetsu*pdf ;  lilypond ly/songs/jazz/ugetsu.ly  ; for file in ugetsu*.pdf ; do op $file ; done  

killPreview
rm ugetsu*pdf
lilypond ly/songs/jazz/ugetsu.ly
mv ugetsu*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/ugetsu*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #17

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

    \key e \major
    \tempo 4=220
    \time 4/4
    \partial 4 s4
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }
    \bar ":|][|:"
    \startSectionNoBarline "B"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
    }
    \bar ":|]"
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s4

    %\override Score.RehearsalMark #'extra-offset = #'( -4 . -5 )
    % "A"
    s1*12
        
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -4 )
    % B
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
    s4 ||
    
    e1:maj7 | d:maj7 | e:maj7 | d:maj7 | 

    e1:maj7 | bf:7 | a:maj7 | ds2:m7.5- gs:7.11+ | 

    cs1:m7.7+ | d:maj9 | 
    cs2:m7.11 fs4:7 a:maj9 | af:7.9- g:maj7 gf:7.11+ f:7.11+ ||

    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
}

chordsFormForFlats= \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s4 ||
    
    e1:maj7 | d:maj7 | e:maj7 | d:maj7 | 

    e1:maj7 | bf:7 | a:maj7 | ef2:m7.5- af:7.11+ | 

    df1:m7.7+ | d:maj9 | 
    df2:m7.11 gf4:7 a:maj9 | af:7.9- g:maj7 gf:7.11+ f:7.11+ ||

    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
    e1:maj9/b | b:1.4.5.7.9.13 | 
}

chordRhythm =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    <>^\markup { " " } s4  || 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 

    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    s1 | 

    r4 r8 c8 ~ 2 | 
    r4 r8 c8 ~ 2 | 
    s1*2 ||

    r8 c4. 4. 8 ~ | 1 | 
    c2 4. 8 ~ | 1 | 
    r8 c4. 4. 8 ~ | 1 | 
    c2 4. 8 ~ | 1 | 
}


melody = \relative c'' { 
    \accidentalStyle default
    b4 || ds2. b8 cs ~ | 2 r8 cs fs [ cs ] |
    ds2 r8 cs8 ds [ b8 ] | cs2 r8 ds cs [ gs ] ~ | 

    gs2 ~ 8 cs b gs ~ | 2 ~ 8 e fs gs ~ | 
    gs2 r8 e a [ cs ] | b4 a d, fs8 ds ~ | 

    ds2 ~ 8 cs ds e ~ | 2 ~ 8 ds e fs ~ | 
    fs2 r4 gs | a b c d ||

    b1\startTrillSpan ~ | 1 ~ | 1 ~ | 1\stopTrillSpan |  
    <>\xmf
    \comp #16
}

melodyForBb = \relative c' { 
    \melody
}

melodyForEb = \relative c' { 
    \melody
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
            \new ChordNames \transpose c c { 
                \chordsForm
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
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
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
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
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \magnifyStaff #5/7
                } {
                \chordRhythm
            }
            \new Staff = "lead" \transpose c c {
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

