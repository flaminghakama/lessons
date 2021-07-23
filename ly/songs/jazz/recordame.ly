\version "2.19.81"

titleLeft = "Recorda"
titleRight = "-Me"
title = "Recorda-Me"
composerName = "J. Henderson"

%{

killPreview ; rm recordame*pdf ;  lilypond ly/songs/jazz/recordame.ly  ; for file in recordame*.pdf ; do op $file ; done  

killPreview
rm recordame*pdf
lilypond ly/songs/jazz/recordame.ly
mv recordame*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/recordame*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #20

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

structureFirst = \relative c' { 
    \key a \minor 
    \time 4/4
    \startSectionNoBarline "Intro"
    s1*10
    \bar "[|:"
    \startSectionNoBarline "A"
    s1*4 \break
    s1*4 \break
}

structureSecond = \relative c' { 
    \key a \minor
    \override Staff.TimeSignature #'stencil = ##f  
    \time 4/4
    \repeat volta 2 { 
        \startSectionNoBarline "B"
        s1*7
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \bar "|." }
    }
}

structureSolos = \relative c' { 
    \key a \minor
    \pageBreak
    \override Staff.TimeSignature #'stencil = ##f  
    \time 4/4
    s1 
    \bar "[|:"
    \startSectionNoBarline "Solo Background"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar ":|]" 
}

chordsFirst = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | s | s | s | a:m | 
    c1:7 | f:maj7 | bf:maj7 | a:m7 | \break 

    s1 ||

    a1:m | s | s | s | 
    c1:m | s | s | c2:m7 f:7 ||
}
chordsSecond = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf1:maj7 | bf2:m7 ef:7 | af1:maj7 | af2:m7 df:7 | 
    gf1:maj7 | g2:m7 c:7 | f2.:maj7 e4:7.9+ ~ | 1 ||
        s1 ||
}

chordsSolo = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    a1:m | s | s | s | 
    c1:m | s | s | c2:m7 f:7 ||
    bf1:maj7 | bf2:m7 ef:7 | af1:maj7 | af2:m7 df:7 | 
    gf1:maj7 | g2:m7 c:7 | f2.:maj7 e4:7.9+ ~ | 1 ||
}

melodyFirst = \relative c' {
    <e c b g>2. r4 | r <fs d b a>2. | <g e c b> r4 | r <fs d b a>2. | <e c b g> r4 | 
    r4 <d bf a g>2. | <e c a g> r4 | r <f d bf a>2. | <a e c a>4. <g d b g>8 r <g d b g> r <a e c a> | 

    r4 r8 e b' c e, [ c ] ||
    fs4. r8 r8 g a [ b ] | 4 a8 b ~ 8 c e, [ c ]  | 
    fs8 g4 a8 ~ 8 b4 8 ~ | 8 a b a   d ef g, [ ef ] | 

    a4. r8 r8 bf c [ d ] | d4 c8 d ~ 8 ef g, [ ef ] | 
    a8 bf4 c8 ~ 8 d4 8 | r4 r8 c d4 c8 f, \laissezVibrer| 
}
melodySecond = \relative c' {
    f1\repeatTie | r8 ef f [ c' ] ~ 4 bf8 g | ef2 r8 d ef [ bf' ] ~ | 2 af4 f8 df ~ | 
    df1 | r4 a'4 ~ 4. g8 | c,4. 8 r c <g' d>4 ~ | 4 r8 e b' c e, c ||
        <g' d>1\repeatTie  
}

melodySolo = \relative c' {
    r2 r8 e fs [ g ] ||
    a1 ~ | 2 ~ 8 g4 e8 | d'4 c8 a r2 | r2 r8 e f [ g ] | 
    a1 ~ | 2 ~ 8 bf4 a8 | d4 c8 d ~ 2 ~ | 2 c8 d f bf, | 
    R1*8
}
bassLine = \relative c {
    a4. b'8 r a r e | a, e' b'4 a4. e8 | 
    a,4. b'8 r a r e | a, e' b'4 a4. e8 | 
    a,4. c'8 r a r e | g a e c d4. e8 | 
    f,4. g'8 r f r c | bf f' c'4 bf4. e,8 | 
    a4. g8 r g r a | R1 ||
}
bassHits = \relative c {
    \override Staff.NoteHead.style = #'slash
    r4 r8 d8 ~ 2 | r4 r8 d8 ~ 2 | r4 r8 d8 ~ 2 | r4 r8 d8 ~ 2 | 
    r4 r8 d8 ~ 2 | r4 r8 d8 ~ 2 | r4 r8 d8 ~ 2 |  
    \revert Staff.NoteHead.style
    \comp #4 ||
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
        \new StaffGroup <<
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureFirst
                    \melodyFirst
                >>
            }
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsFirst
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structureFirst
                    { \bassLine \bassHits } 
                >>
            }
        >>
        \layout {
            \context { \RemoveEmptyStaffContext }
        }
    }
    \score {
        <<
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                { \chordsSecond \chordsSolo }
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    { \structureSecond \structureSolos }
                    { \melodySecond \melodySolo }
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
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
        \new StaffGroup \transpose bf, c <<
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureFirst
                    \melodyFirst
                >>
            }
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsFirst
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef treble
                <<
                    \structureFirst
                    {
                        \transpose c, c \bassLine
                        \transpose e, b \bassHits
                    }
                >>
            }
        >>
        \layout {
            \context { \RemoveEmptyStaffContext }
        }
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                { \chordsSecond \chordsSolo }
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    { \structureSecond \structureSolos }
                    { \melodySecond \melodySolo }
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
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
        \new StaffGroup \transpose ef, c <<
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureFirst
                    \melodyFirst
                >>
            }
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsFirst
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef treble
                <<
                    \structureFirst
                    {
                        \transpose c, c \bassLine
                        \transpose b, b \bassHits
                    }
                >>
            }
        >>
        \layout {
            \context { \RemoveEmptyStaffContext }
        }
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose a a { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                { \chordsSecond \chordsSolo }
            }
            \new Staff = "lead" \transpose a a {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    { \structureSecond \structureSolos }
                    { \melodySecond \melodySolo }
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}


%{

https://www.irealpro.com/ireal-pro-file-format
After the irealbook:// URL scheme identifier, we have six components separated by the '=' character (for this reason the '=' cannot be used in the staff text within the chord progression)

Song Title, The 
LastName FirstName
Style 
Key Signature (C, Db, D, Eb, E, F, Gb, G, Ab, A, Bb, B, A-, Bb-, B-, C-, C#-, D-, Eb-, E-, F-, F#-, G-, G#-)
n
Chord Progression

%}





