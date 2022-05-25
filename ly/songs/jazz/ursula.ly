\version "2.19.81"

titleLeft = "Ursula"
titleRight = ""
title = "Ursula"
composerName = "H. Land"

%{

killPreview ; rm ursula*pdf ;  lilypond ly/songs/jazz/ursula.ly  ; for file in ursula*.pdf ; do op $file ; done  

killPreview
rm ursula*pdf
lilypond ly/songs/jazz/ursula.ly
mv ursula*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/ursula*.pdf ; do op $file ; done  

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

    \key f \minor 
    \tempo 4=128
    \time 2/4
    s2 

    \time 4/4
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*2     
        \bar "||"
        \time 2/4 
    }
    \alternative { 
        { s2 \bar ":|]" }
        { s2 \bar "||" \break }
    }
    \startSection "B"
    \time 4/4
    s1*4 \break
    s1*4 \break 
    s1*4 \break

    \startSection "A"
    s1*6 \break
    s1*4     
    \bar "||"
    \time 2/4 
    s2
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    s2 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 1 )
    % "A"
    s1*11
    
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 2 )
    % "B"
    s1*12    

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    %  "A"
}

rehearsalMarkTweaksForBb = \relative c' { 
    s2 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 1 )
    % "A"
    s1*11
    
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 3 )
    % "B"
    s1*12    

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    %  "A"
}

rehearsalMarkTweaksForEb = \relative c' { 
    s2 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 1 )
    % "A"
    s1*11
    
    \override Score.RehearsalMark #'extra-offset = #'( -1 . 3 )
    % "B"
    s1*12    

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    %  "A"
}

chordsA = \chordmode { 
    s2 ||
    f1:m7 | f:m6 | bf2:m7 af:m7 | s df:9 | 
    g2:13 fs:m7 | gs:m7 a:maj7 | d4:9 bf:9.11+ b2:9.11+ | bf:9 a:aug7 |
    af2:6 g:aug7 | fs4:6 f:7 e2:maj7 | s2 | 
}
chordsAForBb = \chordmode { 
    s2 ||
    f1:m7 | f:m6 | bf2:m7 af:m7 | s df:9 | 
    g2:13 gf:m7 | af:m7 a:maj7 | d4:9 bf:9.11+ b2:9.11+ | bf:9 a:aug7 |
    af2:6 g:aug7 | gf4:6 f:7 ff2:maj7 | s2 | 
}
chordsAForEb = \chordmode { 
    s2 ||
    f1:m7 | f:m6 | bf2:m7 af:m7 | s df:9 | 
    g2:13 gf:m7 | af:m7 bff:maj7 | d4:9 bf:9.11+ cf2:9.11+ | bf:9 a:aug7 |
    af2:6 g:aug7 | gf4:6 f:7 ff2:maj7 | s2 | 
}
chordsB = \chordmode { 
    e2:maj7 ||
    b1:m7 | e:9 | b:m7 | e:9 | 
    e1:m7 | a:9 | e:m7 | a:9 | 
    d1:9.11+ | g:9.11+ | c:9.11+ | b4:aug9 c:9.11+ 
}
chordsBForBb = \chordmode { 
    ff2:maj7 ||
    cf1:m7 | ff:9 | cf:m7 | ff:9 | 
    e1:m7 | a:9 | e:m7 | a:9 | 
    d1:9.11+ | g:9.11+ | c:9.11+ | b4:aug9 c:9.11+ 
}
chordsBForEb = \chordmode { 
    ff2:maj7 ||
    cf1:m7 | ff:9 | cf:m7 | ff:9 | 
    ff1:m7 | bff:9 | ff:m7 | bff:9 | 
    d1:9.11+ | g:9.11+ | c:9.11+ | cf4:aug9 c:9.11+ 
}
chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsA 
    \chordsB
    \chordsA
}
chordsFormForBb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAForBb
    \chordsBForBb
    \chordsAForBb
}
chordsFormForEb = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsAForEb
    \chordsBForEb
    \chordsAForEb
}

melodyACommon = \relative c'' {
    g8 af4 c,8 || g'1 | 
    r4 \tuplet 3/2 { f16 [ ( g f  } e8 ) ] f g af bf  |   
    c8 df4 f,8 bf2 ~ | 2. r4 | 
    gs8 a4 cs,8  gs' fs e ds ~ | 8 cs b cs ~ 2 |
    fs8 e \tuplet 3/2 { c8 e fs } af2 | f2 4. 8 | 
    r2 \tuplet 3/2 4 { r8 r f  b ds gs  | e, as ds  gs ds cs } ds2 |
}
melodyACommonForBb = \relative c'' {
    g8 af4 c,8 || g'1 | 
    r4 \tuplet 3/2 { f16 [ ( g f  } e8 ) ] f g af bf  |   
    c8 df4 f,8 bf2 ~ | 2. r4 | 
    af8 bff4 df,8  af' gf ff ef ~ | 8 df cf df ~ 2 |
    fs8 e \tuplet 3/2 { c8 e fs } af2 | f2 4. 8 | 
    r2 \tuplet 3/2 4 { r8 r f  b ef af  | ff, bf ef  af, ef df } ef2 |
}
melodyACommonForEb = \relative c'' {
    g8 af4 c,8 || g'1 | 
    r4 \tuplet 3/2 { f16 [ ( g f  } e8 ) ] f g af bf  |   
    c8 df4 f,8 bf2 ~ | 2. r4 | 
    af8 bff4 df,8  af' gf ff ef ~ | 8 df cf df ~ 2 |
    fs8 e \tuplet 3/2 { c8 e fs } af2 | f2 4. 8 | 
    r2 \tuplet 3/2 4 { r8 r f,  b ef af  | ff, bf ef  af ef df } ef2 |
}

melodyAFirst = \relative c''{ 
    g8 af4 c,8 ||
}
melodyALast = \relative c''{ 
    r4 r ||
}

melodyBridge = \relative c'' {
    r8 as b [ d ] ||
    e2 ~ 8 d4 \tuplet 3/2 { e16 ( d cs ) } | d8 cs b as  b d fs d | 
    e2 ~ 8 d4 \tuplet 3/2 { e16 ( d cs ) } | d8 cs b as  b d e a, |
    g2 r8 g4 \tuplet 3/2 { a16 ( g fs ) } | g8 fs e ds  e g a e |
    g2 r8 g4 \tuplet 3/2 { a16 ( g fs ) } | g8 fs e ds  e g a as |
    b4. gs8 r e \tuplet 3/2 { c8 e gs } | 
    e'4. cs8 r a \tuplet 3/2 { f8 a cs } | 
    a'4. fs8 r d \tuplet 3/2 { bf8 d fs } | g4 fs  
}
melodyBridgeForBb = \relative c' {
    r8 bf cf [ eff ] ||
    ff2 ~ 8 eff4 \tuplet 3/2 { ff16 ( eff df ) } | eff8 df cf bf  cf eff gf eff | 
    ff2 ~ 8 eff4 \tuplet 3/2 { ff16 ( eff df ) } | eff8 df cf bf  cf eff ff bff, |
    g2 r8 g'4 \tuplet 3/2 { a16 ( g fs ) } | g8 fs e ds  e g a e |
    g2 r8 g4 \tuplet 3/2 { a16 ( g fs ) } | g8 fs e ds  e g a as |
    b4. gs8 r e \tuplet 3/2 { c8 e gs } | 
    e'4. cs8 r a \tuplet 3/2 { f8 a cs } | 
    a'4. fs8 r d \tuplet 3/2 { bf8 d fs } | g4 fs  
}
melodyBridgeForEb = \relative c' {
    r8 bf cf [ eff ] ||
    ff2 ~ 8 eff4 \tuplet 3/2 { ff16 ( eff df ) } | eff8 df cf bf  cf eff gf eff | 
    ff2 ~ 8 eff4 \tuplet 3/2 { ff16 ( eff df ) } | eff8 df cf bf  cf eff ff bff, |
    aff2 r8 aff'4 \tuplet 3/2 { bff16 ( aff gf ) } | aff8 gf ff ef  ff aff bff ff |
    aff2 r8 aff4 \tuplet 3/2 { bff16 ( aff gf ) } | aff8 gf ff ef  ff aff bff cff |
    b4. gs8 r e \tuplet 3/2 { c8 e gs } | 
    e'4. cs8 r a \tuplet 3/2 { f8 a cs } | 
    a4. fs8 r d \tuplet 3/2 { bf8 d fs } | g4 fs  
}

melody = \relative c' { 
    \melodyACommon
    \melodyAFirst
    \melodyBridge
    \melodyACommon
    \melodyALast
}

melodyForBb = \relative c' { 
    \melodyACommonForBb
    \melodyAFirst
    \melodyBridgeForBb
    \melodyACommonForBb
    \melodyALast
}

melodyForAlto = \relative c' { 
    \melodyACommonForEb
    \melodyAFirst
    \melodyBridgeForEb
    \melodyACommonForEb
    \melodyALast
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

