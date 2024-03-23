\version "2.24.0"

titleLeft = "Turn"
titleRight = "It On"
titleFull = "Turn It On"
composerName = "S. Stitt"
arranger = ""
copyright = ""

%{

killPreview ; rm turn-it-on*pdf ;  lilypond ly/songs/jazz/turn-it-on.ly  ; for file in turn-it-on*.pdf ; do op $file ; done  

killPreview
rm turn-it-on*pdf
lilypond ly/songs/jazz/turn-it-on.ly
mv turn-it-on*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/turn-it-on*.pdf ; do op $file ; done  

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

    \key bf \major
    \tempo "Acid Jazz" 4=152
    \time 4/4

    \partial 8 
    s8
    \startSection ""
    s1*4
    \break

    \repeat volta 2 { 
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4 
    }
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s1*4

    %\override Score.RehearsalMark.extra-offset = #'( -4 . -5 )
    % "A"
    s1*12
        
    \override Score.RehearsalMark.extra-offset = #'( -4 . -4 )
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

    s8
    bf1:7 | s | s | s ||

    bf1:7 | s | s | s | 
    ef1:7 | a:7 | bf:7 | s | 
    f1:7.9+ | ef:7.9+ | bf:7 | s ||
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


basslineIntro = \relative c { 
    \accidentalStyle default
    bf16 cf || 
    bf16 [ bf r bf ]  f'8 [ r16 f ]  af16 af af bf  r8 bf,16 cf |
    bf16 [ bf r bf ]  f'8 [ r16 f ]  bf16 af8 f16  r16 f, af a |
    bf16 [ bf r bf ]  f'8 [ r16 f ]  af16 af af bf  r8 bf,16 cf |
    bf16 [ bf r bf ]  f'8 [ r16 f ]  bf16 af8 f16  
}

melodyTop = \relative c'' { 
    \accidentalStyle default
    r16 bf g' g || 
    f4-.  r  r  r16 bf, g' g | 
    f4-.  r  r  r16 bf, g' g | 
    f4-.  r  r  r16 bf, g' g | 
    f4-.  r  r  r16 ef c' c |

    bf4-. r  r  r16 g8 fs16 ~ | 
    fs2.  r16 bf, g' g |
    f4-.  r  r  r16 bf, g' g | 
    f4-.  r  r  r16 g8 af16 ~ | 
    
    af2.  r16 af g gf ~ | 
    gf2.  r16 bf, g' g | 
    f4-.  r  r  r16 bf, g' g | 
    f4-.  r  r2 | 
}

melodyBottom = \relative c'' { 
    \accidentalStyle default
    r16 bf ef ef || 
    d4-.  r  r  r16 bf ef ef | 
    d4-.  r  r  r16 bf ef ef | 
    d4-.  r  r  r16 bf ef ef | 
    d4-.  r  r  r16 ef af af |

    g4-. r4  r  r16 d8 cs16 ~ | 
    cs2.  r16 bf ef ef |
    d4-.  r  r  r16 bf ef ef | 
    d4-.  r  r  r16 d8 ef16 ~  | 

    ef2.  r16 ef d df ~ | 
    df2.  r16 bf ef ef | 
    d4-.  r  r  r16 bf ef ef | 
    d4-.  r  r2 | 
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
                        \clef bass 
                        \basslineIntro
                        \clef treble 
                        <<
                            \melodyTop \\
                            \melodyBottom
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
        \transpose bf c <<
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
                        \transpose c,, c \basslineIntro
                        <<
                            \melodyTop \\
                            \melodyBottom
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
        \transpose ef c <<
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
                        \transpose c,, c \basslineIntro
                        <<
                            \melodyTop \\
                            \melodyBottom
                        >>
                    }
                >>
            }
        >>
    }
}

