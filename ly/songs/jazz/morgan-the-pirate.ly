\version "2.22.0"

titleLeft = "Morgan The"
titleRight = "Pirate"
title = "Morgan The Pirate"
composerName = "L. Morgan"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm morgan-the-pirate*pdf
lilypond ly/songs/jazz/morgan-the-pirate.ly
mv morgan-the-pirate*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/morgan-the-pirate*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph "scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #1

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-right = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key ef \major
    \time 3/4
    \override Score.RehearsalMark #'extra-offset = #'( 2 . 0 )
    \mark \markup \box "Intro"
    s2.*8
    \bar "||"
    \break

    s2.*8 
    \bar "||"
    \break

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \mark \markup \box "A"
    \bar "[|:"
    s2.*8
    \bar "||"
    s2.*8
    \bar "||"

    \override Score.RehearsalMark #'extra-offset = #'( 0 . -1 )
    \mark \markup \box "B"
    s2.*8
    \bar "||"

    s2.*8
    \bar "||"

    \override Score.RehearsalMark #'extra-offset = #'( 0 . -2 )
    \mark \markup \box "A"
    s2.*8
    \bar "||"
    s2.*3 s2 s8. \toCoda s16 s2.*4
    \bar ":|]"
}

structureCoda = \relative c' { 
    \time 3/4
    \key ef \major
    \atCoda
    \bar "[|:"
    s2.*4 
    \bar ":|]"
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef2. | e/ef | ef | d/ef | ef | e/ef | ef | d2:m7.5- g4:7.9+ ||

    c2.:m7 | d2:m7 g4:7 | c2.:m7 | f:7.9- |
    f2.:aug7 | b:7 | bf:7 | bf:7.9- ||

    ef2. | af | ef | df:maj7 | b:maj7 | bf:aug7.9+ | ef | bf:7 ||
    ef2. | af | ef | df:maj7 | b:maj7 | bf:aug7.9+ | ef | s ||

    ef2. | e/ef | ef | d/ef | ef | e/ef | ef | d2:m7.5- g4:7.9+ ||

    c2.:m7 | g:7.9+ | c:m7 | f:7 | s | b:7 | e:7 | s ||

    ef2. | af | ef | df:maj7 | b:maj7 | bf:aug7.9+ | ef | bf:7 ||
    ef2. | af | ef | df:maj7 | b:maj7 | bf:aug7.9+ | ef | s ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b2.:maj7 | bf:aug7.9+ | ef:7.9+ | s ||
}

melodyIntro = \relative c'' {
        \override NoteHead.style = #'slash
        \override NoteHead.font-size = #-2
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        bf8\rest bf8 ~ 2 | 
        \comp 3 

        <>\xp
        \comp 24 

        \revert NoteHead.style
        \revert NoteHead.no-ledgers
        \revert NoteHead.font-size
}

melodyTop = \relative c' {
    bf8 8 ef g bf\rest af ~ | 4 g8 af \tuplet 3/2 { g8 ef c } | bf8 8 ef f bf\rest f ~ | 2. |
    bf,8 8 ef gf bf\rest af ~ | 4 gf8 af \tuplet 3/2 { gf8 ef cf } | bf2. |
    \tuplet 3/2 { bf'8 8 af } e8 af bf af ||

    bf,8 8 ef g bf\rest af ~ | 4 g8 af \tuplet 3/2 { g8 ef c } | bf8 8 ef g bf\rest f ~ | 2. |
    bf,8 8 ef bf' bf\rest gf ~ | 4 f8 gf \tuplet 3/2 { f8 ef df } | ef2. ~ | 2. ||

    g4. bf8 bf\rest g | gs4. b8 bf\rest gs | g4. bf8 bf\rest g | fs2. |
    g4. bf8 bf\rest g | gs4. b8 bf\rest gs | g2. | g8 af16 g f8 g16 f d4 ||

    ef4. g8 bf\rest ef, | d4. f8 bf\rest d, | ef4. g8 bf\rest bf | a2. |
    f4 ef8 g c,4 | f ef8 gf c,4 | f8 8 bf4 bf8\rest f | bf\rest f bf\rest f bf,4 || 

    bf8 8 ef g bf\rest af ~ | 4 g8 af \tuplet 3/2 { g8 ef c } | bf8 8 ef f bf\rest f ~ | 2. |
    bf,8 8 ef gf bf\rest af ~ | 4 gf8 af \tuplet 3/2 { gf8 ef cf } | bf2. |
    \tuplet 3/2 { bf'8 8 af } e8 af bf af ||

    bf,8 8 ef g bf\rest af ~ | 4 g8 af \tuplet 3/2 { g8 ef c } | bf8 8 ef g bf\rest f ~ | 2. |
    bf,8 8 ef bf' bf\rest gf ~ | 4 f8 gf \tuplet 3/2 { f8 ef df } | ef2. ~ | 2. ||
}

melodyBottom = \relative c' {
    bf8 8 ef g s f ~ | 4 ef8 f \tuplet 3/2 { ef8 ef c } | bf8 8 ef f s c ~ | 2. |
    bf8 8 ef gf s f ~ | 4 ef8 f \tuplet 3/2 { ef8 c af } | g2. |
    \tuplet 3/2 { af'8 8 gf } d8 gf af gf ||

    bf,8 8 ef g s f ~ | 4 ef8 f \tuplet 3/2 { ef8 ef c } | bf8 8 ef f s c ~ | 2. |
    bf8 8 ef bf' s df, ~ | 4 c8 df \tuplet 3/2 { c8 bf af } | bf2. ~ | 2. ||

    ef4. g8 s ef | e4. gs8 s e | ef4. g8 s ef | d2. |
    ef4. g8 s ef | e4. gs8 s e | ef2. | g8 af16 g f8 g16 f d4 ||

    c4. ef8 s c | b4. d8 s b | c4. ef8 s g | f2. |
    f4 ef8 g c,4 | f ef8 gf c,4 | f8 8 bf4 s8 f | s f s f bf,4 || 

    bf8 8 ef g s f ~ | 4 ef8 f \tuplet 3/2 { ef8 ef c } | bf8 8 ef f s c ~ | 2. |
    bf8 8 ef gf s f ~ | 4 ef8 f \tuplet 3/2 { ef8 c af } | g2. |
    \tuplet 3/2 { af'8 8 gf } d8 gf af gf ||

    bf,8 8 ef g s f ~ | 4 ef8 f \tuplet 3/2 { ef8 ef c } | bf8 8 ef f s c ~ | 2. |
    bf8 8 ef bf' s df, ~ | 4 c8 df \tuplet 3/2 { c8 bf af } | bf2. ~ | 2. ||
}

melody = {
    \melodyIntro
    <<
        \melodyTop \\
        \melodyBottom
    >>
}
melodyCodaTop = \relative c' {
    bf8 8 ef bf' r gf ~ | 4 f8 gf \tuplet 3/2 { f8 ef df } | ef2. ~ | 2. ||
}
melodyCodaBottom = \relative c' {
    bf8 8 ef bf' r df, ~ | 4 c8 df \tuplet 3/2 { c8 bf af } | bf2. ~ | 2. ||
}
melodyCoda = <<
    \melodyCodaTop \\
    \melodyCodaBottom
>>


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

% \book {
%   \bookOutputSuffix "for-Bb"
%     \header {
%         poet = "    Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose bf c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong  
%             }
%             \new Staff \transpose bf, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structure
%                     \melody
%                 >>
%             }
%         >>
%     }

%     \score {
%         \header {
%             piece = " "
%         }
%         <<
%             \new ChordNames \transpose bf, c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsCoda 
%             }
%             \new Staff \transpose bf, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structureCoda
%                     \melodyCoda
%                 >>
%             }
%         >>
%         \layout { 
%             indent = 2.15\cm
%             short-indent = 1.25\cm
%             \context {
%                 \Score
%                 \override StaffGrouper.staff-staff-spacing.padding = #0
%                 \override StaffGrouper.staff-staff-spacing.basic-distance = #0
%             }
%         }
%     }
% }

% \book {
%   \bookOutputSuffix "for-Eb"
%     \header {
%         poet = "    Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose ef c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff \transpose ef, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structure
%                     \melody
%                 >>
%             }
%         >>
%     }

%     \score {
%         \header {
%             piece = " "
%         }
%         <<
%             \new ChordNames \transpose ef, c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsCoda 
%             }
%             \new Staff \transpose ef, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structureCoda
%                     \melodyCoda
%                 >>
%             }
%         >>
%         \layout { 
%             indent = 2.15\cm
%             short-indent = 1.25\cm
%             \context {
%                 \Score
%                 \override StaffGrouper.staff-staff-spacing.padding = #0
%                 \override StaffGrouper.staff-staff-spacing.basic-distance = #0
%             }
%         }
%     }
% }

