\version "2.24.0"

titleLeft = "Twerk"
titleRight = "It"
titleFull = "Twerk It"
composerName = "D. Harrison"
arranger = ""
copyright = ""

%{

killPreview ; rm twerk-it*pdf ;  lilypond ly/songs/jazz/twerk-it.ly  ; for file in twerk-it*.pdf ; do op $file ; done  

killPreview
rm twerk-it*pdf
lilypond ly/songs/jazz/twerk-it.ly
mv twerk-it*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/twerk-it*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #20

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

    \key d \minor
    \tempo  4=92
    \time 4/4

    \startSection "Drums"
    \startRepeat
    s1*2 \break

    \startSection "Piano"
    \endRepeat
    s1*4

    \startSection "Hits"
    s1*4


    \startSection "Vocal"
    s1*4

    \startSection "Head"
    \repeat volta 2 { 
        \startRepeat
        s1*2 \break
        s1
    }
    \alternative {
        { s1 \endRepeat }
        { s1 \bar "|." }
    }
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "Drums"
    s1*2 

    \override Score.RehearsalMark.extra-offset = #'( -4 . 2 )
    % "Piano"
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Piano Harmony w/ hits"
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vocal"
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "Head"
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

    % "Drums"
    s1*2

    % "Piano"
    s1*4

    % "Piano Harmony w/ hits"
    d1:m9 | s | g:m7 | s | 

    % "Vocal"
    d1:m9 | s | g:m7 | s | 

    % "Head"
    d1:m9 | s | g:m7 | s || s ||
}

kickClaps = \relative c' {
    f8. 16  <f bf>8 [ f ]  f16\rest 16 8  <f bf>4 |
    f8. 16  <f bf>8 [ f ]  f16\rest 16 8  <f bf>4 |
}
kickClapsForFlats = \relative c' {
    fs8. 16  <fs b>8 [ fs ]  fs16\rest 16 8  <fs b>4 |
    fs8. 16  <fs b>8 [ fs ]  fs16\rest 16 8  <fs b>4 |
}

rideCymbal = \relative c''' {
    \override NoteHead.style = #'cross
    s4 \tuplet 3/2 { g8 16 } 8  s2 |
    s4 \tuplet 3/2 { g8 16 } 8  s2 |
}

circle = \once \override NoteHead.stencil = #(lambda (grob)
    (let* ((note (ly:note-head::print grob))
           (combo-stencil (ly:stencil-add
               note
               (circle-stencil note 0.15 0.2))))
          (ly:make-stencil (ly:stencil-expr combo-stencil)
            (ly:stencil-extent note X)
            (ly:stencil-extent note Y))))

hiHat = \relative c'' {
    \override NoteHead.style = #'cross
    e8 8  8 8  8 8  8 8 |  
    e8 8  8 8  8 8  8 \circle 8 |
    \revert NoteHead.style
}

pianoLick = \relative c' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    d16 e f e  d4  r8 d16 e  f e d8 |
    d16 e f e  d4  d16 a' g e  bf' a fs a |
    g16 a bf a  g4  r8 g16 a  bf a g8 |
    g16 a bf a  g4  a16 d g, c  f, bf e, g ||
}

pianoHits = \relative c' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    f16 g a g  f8 <a c e> ~ 8 r8 s4 |
    s1 | 
    s4  r8 <g bf d> ~ 8 r8 s4 |
    s1 |
}

voice = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    c16 d8 c16  d8 [ \tuplet 3/2 { 16 16 16 } ]  c16 d8 c16  d4 |
    s1*3
}

pianoVoice = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    r4  r8 <a c e> ~  8 f16 g  a g f8 |
    f16 g a g  f4  d16 a' g e  bf' a fs a |
    bf16 c d c  bf8 <bf g d> ~  8 bf16 c  d c bf8 |
    bf16 c d c  bf4  a16 d g, c  f, bf e, g ||
}

melody = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    c16 d8 c16  d8 [ \tuplet 3/2 { 16 16 16 } ]  c16 d8 c16  r16 d r8 |
    c16 d8 c16  d8 [ \tuplet 3/2 { 16 16 16 } ]  c16 d8 c16  d8 r |
    c16 d8 c16  d8 c16 d  r16 c d8  f16 16 r8 |
    c16 d8 c16  d8 c16 d  r16 c d8  f16 16 r8 ||
    c16 d8 c16  d8 c16 d  r16 c d8  f4 ||
}
harmony = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    g16 a8 g16  a8 [ \tuplet 3/2 { 16 16 16 } ]  g16 a8 g16  r16 a r8 |
    g16 a8 g16  a8 [ \tuplet 3/2 { 16 16 16 } ]  g16 a8 g16  a8 r |
    a16 bf8 a16  bf8 a16 bf  r16 a bf8  d16 16 r8 |
    a16 bf8 a16  bf8 a16 bf  r16 a bf8  d16 16 r8 || 
    a16 bf8 a16  bf8 a16 bf  r16 a bf8  d4 || 
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
        \transpose bf bf <<
            \new ChordNames { 
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver" 
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        <<
                            <<
                                \rideCymbal
                                \hiHat
                            >> \\
                            \kickClaps
                        >>
                        \pianoLick
                        <<
                            \pianoHits \\
                            \pianoLick
                        >>
                        <<
                            \voice \\
                            \pianoVoice
                        >>
                        << 
                            \melody \\
                            \harmony 
                        >>
                    }
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
            \new ChordNames { 
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver" 
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \transpose c bf, <<
                            <<
                                \rideCymbal
                                \hiHat
                            >> \\
                            \kickClapsForFlats
                        >>
                        \pianoLick
                        <<
                            \pianoHits \\
                            \pianoLick
                        >>
                        <<
                            \voice \\
                            \pianoVoice
                        >>
                        << 
                            \melody \\
                            \harmony 
                        >>
                    }
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
            \new ChordNames { 
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver" 
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \transpose c ef, <<
                            <<
                                \rideCymbal
                                \hiHat
                            >> \\
                            \kickClapsForFlats
                        >>
                        \pianoLick
                        <<
                            \pianoHits \\
                            \pianoLick
                        >>
                        <<
                            \voice \\
                            \pianoVoice
                        >>
                        << 
                            \melody \\
                            \harmony 
                        >>
                    }
                >>
            }
        >>
    }
}

