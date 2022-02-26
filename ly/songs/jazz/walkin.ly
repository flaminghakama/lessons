
\version "2.22.1"

titleLeft = "Walkin'"
titleRight = ""
title = "Walkin'"
composerName = "M. Davis"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm walkin*pdf
lilypond ly/songs/jazz/walkin.ly
mv walkin*pdf pdf/songs/jazz
for file in pdf/songs/jazz/walkin*pdf ; do open -a Preview $file ; done

%}


\paper {

  top-margin = #2
  right-margin = #14
  left-margin = #2

  % First page spacing after header
  markup-system-spacing.padding = #5

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

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \override Score.RehearsalMark #'extra-offset = #'( 2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

	\key f \major
	\time 4/4
    \startSectionNoBarline "Intro"
	\partial 4 s4
	\bar "||"		
    s1*4 \break
    s1*3 
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 2 )
    \startSectionNoBarline "Head"
    s1 \break

    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative {
        \relative c' {
            s1 \bar ":|]"
        } 
        {
            s1 \bar "[|:" 
        }
    } \break
    \override Score.RehearsalMark #'extra-offset = #'( -7 . -1 )
    \startSectionNoBarline "Solos"
    s1*4 \break 
    s1*4 \break 
    s1*4 
    \bar ":|]"
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4
    s1*8

    f1:7 | bf:7 | f:7 | s | 
    
    bf:7 | s | f:7 | s | 
    
    c4:7.9+ b:7.9+ s bf:7.9+ | a:7.9+ r af:7.9+ g:7.9+ |
    f1:7.9+ | c:7 || c:7 ||

    f1:7 | bf:7 | f:7 | s |     
    bf:7 | s | f:7 | s | 
    g1:m7 | c:7 | f1:7 | c:7 ||
}

introBackbeat = \relative c {
    r4 || 
    r4 c r8. c16 c4 | 
    r4 c r8. c16 c4 | 
    r4 c r8. c16 c4 | 
    r4 c r8. c16 c4 | 

    r4 c r8. c16 c4 | 
    r4 c r8. c16 c4 | 
    r4 c r c8 8 ~ | 2 r || 
}

introLick = \relative c'' {
    f4 || 
    af8 f4. ef4 c | ef8 c4. bf4 f | af8 f4. ef2 ~ | 2 r4 f'4 |
    af8 f4. ef4 
}
introMelody  = \relative c'' {
    c4 | ef8 c4. bf4 f | af8 f4. ef2 | 
}
introHarmony = \relative c'' {
    g4 | bf8 g4. f4 c | ef8 c4. bf2 |
}


hideNote = {
    \once \hide NoteHead
    \once \hide Stem
    \once \override NoteHead.no-ledgers = ##t
    \once \override Glissando.bound-details.left.padding = #0.3
}

melody = \relative c' {
    r4 f8 c e f4 b8 ~ ||

    b2.. c8 | r4 r8 f,16 c e8 f4 bf8 ~ | 
    bf2. \grace { gs8 ( } a8 ) f | r4 r8 af16 f af8 f4 e'8 ~ | 
    
    e2.. f8 | r2
        \override Glissando.style = #'trill
        \grace { \hideNote f8 \glissando }
        af, f4 b8 ~ |
    b2.. c8 | r2 r8 a8 c [ d ] | 

    ef8 8 d4 r df8 8 | c4 r cf8 8 bf8 8 
    af2.. bf8 | r4 r8 f16 c e8 f4 b8 \laissezVibrer || 

    %\comp #48   
}

hits = \relative c'' {
    r2 r4 ef4 ||
    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 
    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 

    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 
    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 

    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 
    f4 r8 f r4 r8 f | r4 r8 ef8 f af f ef | 
}

\header {
    title = \title
    composer = \composerName
}

\layout {
    % \context {
    %     \Score
    %     proportionalNotationDuration = #(ly:make-moment 1/1)
    % }
    \context { 
        \Staff 
        \RemoveAllEmptyStaves 
    }
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \introLick
                        << \introMelody \\ \introHarmony >>
                        \melody
                        \hits
                    }
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure
                    \introBackbeat
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \introLick
                        << \introMelody \\ \introHarmony >>
                        \melody
                        \hits
                    }
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure
                    \introBackbeat
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \introLick
                        << \introMelody \\ \introHarmony >>
                        \melody
                        \hits
                    }
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure
                    \introBackbeat
                >>
            }
        >>
    }
}
