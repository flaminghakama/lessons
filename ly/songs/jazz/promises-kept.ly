\version "2.24.0"

titleLeft = "Promises"
titleRight = "Kept"
titleFull = "Promises Kept"
composerName = "S. Sharrock"
arranger = ""
copyright = ""

%{

killPreview ; rm promises-kept*pdf ;  lilypond ly/songs/jazz/promises-kept.ly  ; for file in promises-kept*.pdf ; do op $file ; done  

killPreview
rm promises-kept*pdf
lilypond ly/songs/jazz/promises-kept.ly
mv promises-kept*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/promises-kept*.pdf ; do op $file ; done  

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
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #7

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

structure = \relative c' { 

    \key af \major
    \tempo 4=212
    \time 4/4

    \startSectionWithLabel "A" "4X"
    \startRepeat
    s1*4

    \startSection "B"
    \endRepeat    
    s1*4
    s1*4

    \startSection "C"
    \startRepeat    
    s1*4 
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "A" "4X"
    s1*4 \break

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    %  "B"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    %  "C"
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
    bf1:m7 | af | ef2:m6 df:6 | af1 ||
    ef1:m/f | ef:m | ef1:m/f | ef:m |
    ef1:m/f | ef:m | ef1:m/f | ef:m ||
    df1:maj7 | s | s | s ||
}

melodyAB = \relative c' { 
    r2 f8 af bf df | r4 c2 r4 | bf8 c bf4  af8 bf af ef ~ | 1 || 
    
    r2 f16 gf f8 ef4 ~ | 2 f16 gf f8 c4 ~ | 
    c2 f16 gf f8 ef4 ~ | 2 f16 gf f8 c4 ~ |
    c2 f16 gf f8 ef4 ~ | 2 f16 gf f8 c4 ~ |
    c2 f16 gf f8 ef4 ~ | 2 f16 gf f8 c4 ||
}
melodyC = \relative c' { 
    c4 r8 df ~ 2 ~ | 1 | c4 r8 df ~ 2 ~ | 1 || 
}
harmony = \relative c' { 
    s1 | r4 ef2 r4 | ef r df r8 c ~ | 1 ||

    c2.. bf8 ~ | 1 | c2.. bf8 ~ | 1 |
    c2.. bf8 ~ | 1 | c2.. bf8 ~ | 1 ||
}

bassline = \relative c { 
    bf2.. af8 ~ | 1 | ef'4 r df r8 af ~ | 2 r8 a4. ||

    f'2.. ef8 ~ | 1 | f2.. ef8 ~ | 1 |
    f2.. ef8 ~ | 1 | f2.. ef8 ~ | 1 ||

    c4 r8 df ~ 2 ~ | 1 | c4 r8 df ~ 2 ~ | 1 || 
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 4))
            } <<
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            << 
                                \melodyAB \\
                                \harmony
                            >>
                            \melodyC
                        }
                        \noPageBreak
                    >>
                }
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \clef bass
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \bassline
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 4))
            } <<
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            << 
                                \melodyAB \\
                                \harmony
                            >>
                            \melodyC
                        }
                        \noPageBreak
                    >>
                }
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c, c \bassline
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 4))
            } <<
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            << 
                                \melodyAB \\
                                \harmony
                            >>
                            \melodyC
                        }
                        \noPageBreak
                    >>
                }
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c, c \bassline
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
        }
    }
}

