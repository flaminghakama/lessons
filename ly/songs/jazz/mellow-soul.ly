\version "2.24.0"

titleLeft = "Mellow"
titleRight = "Soul"
titleFull = "Mellow Soul"
composerName = "P. Yellen"
arranger = ""
copyright = ""


%{

killPreview ; rm mellow-soul*pdf ;  lilypond ly/songs/jazz/mellow-soul.ly  ; for file in mellow-soul*.pdf ; do op $file ; done  

killPreview
rm mellow-soul*pdf
lilypond ly/songs/jazz/mellow-soul.ly
mv mellow-soul*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/mellow-soul*.pdf ; do op $file ; done  

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

    #(define fonts
        (make-pango-font-tree 
            "Marker Felt" 
             "Highlander ITC TT" 
             "LilyJAZZText"
             (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

\layout {
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #2
        \override StaffGrouper.staff-staff-spacing.basic-distance = #5
      }
}


structure = \relative c' { 
    \key b \major 
    \time 4/4
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar ":|]"
}


melody = \relative c'' { 
    \accidentalStyle default
    b4 fs8 b ~ 8 cs4 fs8 ~ | 1 | 
    a4 b,8 d ~ 8 a'4 fs8 ~ | 2. fs4 |
    fs4 d8 b ~ 4 fs' | d bf8 g ~ 4 d'8 c ~ | 
    c1 | gs8 a cs d gs4-. r8 fs, |

    b4 fs8 b ~ 8 cs4 fs8 ~ | 1 | 
    a4 b,8 d ~ 8 a'4 fs8 ~ | 2. fs4 |
    fs4 d8 b ~ 4 fs' | d bf8 g ~ 4 d'8 c ~ | 
    c2. r8 cs ~ | 1 |
}

harmony = \relative c' { 
    \accidentalStyle default
    b8 fs' b cs ~ 4. fs,8 | b, fs' b cs ~ 4. fs,8 | 
    b,8 fs' b d ~ 4. fs,8 | b, fs' b d ~ 4. fs,8 | 
    \comp #12 gs'8 fs e cs a4 r |

    b,8 fs' b cs ~ 4. fs,8 | b, fs' b cs ~ 4. fs,8 | 
    b,8 fs' b d ~ 4. fs,8 | b, fs' b d ~ 4. fs,8 | 
    <>\xmf \comp #16
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    b1:maj7 | s | b:m7 | s | 
    g1:maj7 | g2:m7 c:7 | bf1:maj7 | a:maj7.11+ ||
    b1:maj7 | s | b:m7 | s | 
    g1:maj7 | g2:m7 c:7 | bf1:maj7 | b:maj7.11+ ||
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
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new StaffGroup <<
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    <<
                        \structure
                        \melody
                    >>
                    \noPageBreak
                }
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    <<
                        \structure
                        \harmony
                    >>
                    \noPageBreak
                }
            >>
        >>
        \layout {
            ragged-right = ##f
            ragged-last = ##f
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
        \transpose bf, ef <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new StaffGroup <<
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c, {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    <<
                        \structure
                        \melody
                    >>
                    \noPageBreak
                }
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    <<
                        \structure
                        \harmony
                    >>
                    \noPageBreak
                }
            >>
        >>
        \layout {
            ragged-right = ##f
            ragged-last = ##f
        }
    }
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
        \transpose c ef, <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new StaffGroup <<
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    <<
                        \structure
                        \melody
                    >>
                    \noPageBreak
                }
                \new Staff 
                \with { \consists "Merge_rests_engraver" } 
                \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clef bass
                    <<
                        \structure
                        \harmony
                    >>
                    \noPageBreak
                }
            >>
        >>
        \layout {
            ragged-right = ##f
            ragged-last = ##f
        }
    }
}
