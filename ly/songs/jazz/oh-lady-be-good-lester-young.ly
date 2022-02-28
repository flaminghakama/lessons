\version "2.19.83"
\include "english.ly"

titleLeft = "Transcription of "
titleRight = "Oh, Lady Be Good"
title = "Transcription of  Oh, Lady Be Good"
composerName = "Lester Young"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm oh-lady-be-good-lester-young*pdf
lilypond ly/exercises/saxophone/oh-lady-be-good-lester-young.ly

mv oh-lady-be-good-lester-young*.pdf pdf/exercises/saxophone

for file in pdf/exercises/saxophone/oh-lady-be-good-lester-young*pdf ; do open -a Preview $file ; done

echo git add pdf/exercises/saxophone/oh-lady-be-good-lester-young* ly/exercises/saxophone/oh-lady-be-good-lester-young.ly

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key e \major
    \time 4/4
    \partial 2*1 
    s2 
    \startSection ""
    s1*4 \break 
    s1*4
    \startSection "" \break
    s1*4 \break 
    s1*4
    \startSection "" \break
    s1*4 \break 
    s1*4
    \startSection "" \break
    s1*4 \break 
    s1 \noBreak  s1 \noBreak  s1 \noBreak  s1 
    \startSection "" \break
    s1*1
}

chordsACommon = \chordmode { 
    e1:maj7 | a:7 | e2:maj7 a:7 | gs:m7 cs:7 | 
    fs1:m7 | b:7 |     
}
chordsB = \chordmode { 
    a1:maj7 | as:dim7 | e:6 | ds2:m7.5- gs:7 | 
    cs1:m7 | fs:7 | fs:m7 | b:7 | 
}
chordsForm = \chordmode { 
    \chordsACommon 
    e2:6 cs:m7 | fs:m7 b:7 |    
    \chordsACommon 
    e1:6 | b2:m7 e:7 |    
    \chordsB
    \chordsACommon
    e2:6 cs:m7 | fs:m7 b:7 |    
    e1:maj7    
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2
    \chordsForm
}


melody = \relative c'' { 
    r8 g8 gs4-. || b4.-> r8 r2 | 
    r8 g8 ( gs ) [ b ]  cs e d e16 ( d )|  b8 gs e ( cs ) gs'4 r | 
    r4 r8 cs,8 ( ~ 8 e4. ) | 

    cs8 ( e ) cs4 e4. 8 (| c8 ) e4 c8 e4-. 4 |
    b8 e ( gs4-. ) cs4-> r |  

    r4 r8 cs r8 4. || b8 ( cs ) e4-. d8 b ( gs  e ) | b'4 a8 ( g gs ) e ( cs b ) |
    e4. 8 ( \grace { g8 } gs8 ) b r4 | e,4 r \grace { g8 ( }  gs8 b gs ) b ( 

    a8 ) 8 ( cs4 ) r2 | gs'8 fs e cs a fs cs'4-> |
    b8 gs ( e cs ) a' ( gs4 ) d8 | fs ( d ) e4-. b'4-> r8  

    e8 ( || cs ) a fs4-. a4. r8 | r8 fs'4. ( e ) 
    cs8 ( | b ) gs ( e )  a  ( gs ) ds ( fs ) ds ( | e4 ) r8 

    cs'8 ~ 4 gs8 e ( | cs ) b as cs  e fs ( gs4-. ) | as4  r 
    fs'4. e8 | cs ( a ) fs ( e ds4-. ) cs' | r4 r8 

    b8 r4 b || r8 b r gs ( b ) cs ( e4-. ) | b4. b8 r4 
    b8 cs | e gs ( e4-. )  e4 r | r 

    \tuplet 3/2 { b8 ( cs e } d4. b8 ~ | 4. ) 

    a8 r b ( a4-. ) | b4 ( a8 g gs ) e ( cs4-. ) | e4-. 4-. 4-. r | r8 

    g'8 ( gs ) [ a ] ( gs)  e fs ds || e ds16 ( d cs8 ) gs ~ 4 r   

}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Alto Sax"
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

}
