\version "2.19.81"

titleLeft = "Omi"
titleRight = "cron"
title = "Omicron"
composerName = "D. Byrd"

%{

killPreview ; rm omicron*pdf ;  lilypond ly/songs/jazz/omicron.ly  ; for file in omicron*.pdf ; do op $file ; done  

killPreview
rm omicron*pdf
lilypond ly/songs/jazz/omicron.ly
mv omicron*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/omicron*.pdf ; do op $file ; done  

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

structureIntro = \relative c' { 

    \key df \major 

    \once \override Score.MetronomeMark #'extra-offset = #'( -6 . 1 )
    \tempo 4=212

    \time 6/8

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'extra-offset = #'( 10 . 0  )
    \startSection "Drums"
    \repeat volta 2 { 
        \bar "[|:"  
        s2.*3 
    }
    \alternative {
        {
            s2. 
            \bar ":|]"
            \break
        }
        { 
            s2.  
        }
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0  )
    \startSection "Bass"
    \repeat volta 2 { 
        \bar "[|:"  
        s2.*3 

    }
    \alternative {
        {
            s2. 
            \bar ":|]"
            \break
        }
        { 
            s2.  
        }
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0  )
    \startSection "Melody"
    s2.*4 \break
    s2.*4 \break

    \startSection ""
    s2.*4 \break
    s2.*4 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( 4 . 2 )
    \startSection "Drums"
    s2.*4 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( 1 . 2  )
    \startSection "Modulation"

    \once \override Score.MetronomeMark #'extra-offset = #'( -3 . 0.4 )
    \tempo \markup {
        \concat {
            \smaller \general-align #Y #DOWN \note {4.} #1
            " = "
            \smaller \general-align #Y #DOWN \note {2} #1
         }
    }
    \time 4/4
    s1*3
}
structureHead = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \tempo 4=212

    s1

    \startSectionNoBarline "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*2 \break
        s1*3 \break
        s1*2  }
    \alternative { 
        \relative c' { 
            s1 
            \bar ":|]"
        }
        \relative c' { 
            s1 \break
        }
    }

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "A"
    s1*4 \break
    s1*4
    \bar "|."
}
structure = \relative c' { 
    \structureIntro
    \pageBreak
    \structureHead
}

restsIntro = {
    s2.*3 
        s2. 
        s2.  

    s2.*3 
        s2. 
        s2.  

    s2.*8

    s2.*8

    s2.*4 

    s1*3
}
melodyIntroBassline = \relative c' {
    r4. r8 cf8 8 ||
    df,4 af'8 df8 [ 8 ] r8 | r8 df, [ af' ]  df [ cf cf ]
    df,4 af'8 df8 [ 8 ] r8 | r8 df, [ af' ]  df [ cf cf ]
}
melodyIntroTrumpet = \relative c'' {
    r4. r8 bf c ||
    df4. ~ 8 bf g | e4.  df'8 c bf |
    cf4 8 r8 ef, bf' ~ | 4. ~ 4 af8 | 
    a8 8 r r4. | r4 df,8 af'8 ~ 32 bf af g gf8 | 
    f2. | r4. r8 bf c ||
    
    df4. ~ 8 bf g | e4.  df'8 c bf |
    cf4 8 r8 ef, bf' ~ | 4. ~ 4 af8 | 
    a4. df,4 af'8 ~ | 4. ~ 4 e8 | 
    f8 ef? f ~ 4. ~ | 2. ||  
}
melodyIntro = {
    \clef bass 
    <>\xmp
    \compp #8
    \melodyIntroBassline    
    \clef treble
    \melodyIntroTrumpet
    <>\xmp
    \compp #8

    <>\xmp
    \comp #12
}
melodyIntroFlats = {
    <>\xmp
    \compp #8
    \transpose c, c \melodyIntroBassline    
    \melodyIntroTrumpet
    <>\xmp
    \compp #8

    <>\xmp
    \comp #12
}
melodyAPickup = \relative c' { 
    r8 c ef16 f32 ef c8  df8 ef f af  ||
}
melodyACommon = \relative c'' { 
    \melodyAPickup
    df8 bf r4 r c8 bf ~ | 4  af8 c,  df e g bf | 
    
    cf8 df bf cf  af f r4 | d16 ef32 d bf8  ef bf   e16 f32 e bf8  f' ef | 
    af8 f gf af  a b cs a  | af? gf b a  r f df [ <ef c> ~ ] |
    <ef c>2. r4 | 
}
melodyACommonForFlats = \relative c'' { 
    \melodyAPickup
    df8 bf r4 r c8 bf ~ | 4  af8 c,  df e g bf | 
    
    cf8 df bf cf  af f r4 | d16 ef32 d bf8  ef bf   e16 f32 e bf8  f' ef | 
    af8 f gf af  bff cf df bff  | af gf cf bff  r f df [ <ef c> ~ ] |
    <ef c>2. r4 | 
}

melodyBCommon = \relative c'' { 
    R1 | 
    <>\xmp
    \comp #16 
    <>\xmp
    \comp #12
}

melodyB = \relative c'' { 
    \melodyBCommon
}


melodyCoda = \relative c' {
}
melodyCodaForEb = \relative c' {
}

melody = \relative c'' { 
    \accidentalStyle default
    %  Intro
    \melodyIntro

    %  Head
    \melodyACommon 
    \melodyAPickup

    \melodyB
    \melodyACommon
    \comp #4
}

melodyForFlats = \relative c'' { 
    \accidentalStyle default
    %  Intro
    \melodyIntroFlats

    %  Head
    \melodyACommonForFlats 
    \melodyAPickup

    \melodyB
    \melodyACommonForFlats
    \comp #4
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    %  Intro
    s2.*5
    df2.:7 s2.*4

    g2.:m7.5- | c:7.9- |  
    f2.:m7.5- | bf:7.9- |  
    ef2.:m7.5- | af:7.9- |  
    df2.:maj9 | s ||

    g2.:m7.5- | c:7.9- |  
    f2.:m7.5- | bf:7.9- |  
    ef2.:m7.5- | af:7.9- |  
    df2.:maj9 | s ||

    s2.*4
    s1*3


    %  Head
    s1 ||
    g1:m7.5- | c:7.9- |  
    f1:m7.5- | bf:7.9- |  
    ef1:m7.5- | af:7.9- |  
    df1:maj9 | s || s ||

    af1:m7 | df:7 | af2:m7 g:7 | gf1:maj7 |   
    bf1:m7 | ef:7 | bf2:m7 a:7 | af1:7 |   

    g1:m7.5- | c:7.9- |  
    f1:m7.5- | bf:7.9- |  
    ef1:m7.5- | af:7.9- |  
    df1:maj9 | s ||
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
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
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
        \transpose c g \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForFlats
                >>
                \noPageBreak
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
        \transpose c g \transpose ef c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForFlats
                >>
                \noPageBreak
            }
        >>
    }
}
