\version "2.24.0"

titleLeft = "Trouble"
titleRight = "Time"
titleFull = "Trouble Time"
composerName = "A.C. Lewis"
arranger = ""
copyright = ""


%{

killPreview ; rm trouble-time-*.pdf ; lilypond ly/songs/ac/trouble-time.ly ; for file in trouble-time-*pdf ; do op $file ; done

killPreview
rm trouble-time*pdf
lilypond ly/songs/ac/trouble-time.ly 
mv trouble-time-*pdf pdf/songs/ac
for file in pdf/songs/ac/trouble-time-*pdf ; do op $file ; done  

git add . ; git commit -m"notating" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #22

  % Spacing in between systems
  system-system-spacing.padding = #2

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
 
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key c \major 
    \time 4/4
    \tempo 4=138 

    s1*2


    \startSection "A" 
    \bar "S||"
    s1*5

    \startSection "B"
    s1*5

    \startSection "C"
    s1*4 s2... \toCoda s16 \break 

    \startSection "D"
    s1*2

    \startSection "E"
    s1*5
    
    \startSection "F"
    s1*12

    \pageBreak

    \startSectionWithLabel "G" "Solos"
    \startRepeat
    s1*4
    s1*2 \break s1*2
    s1*4 \break 

    \startSection "H" 
    \endRepeat
    \tempo \markup \center-column { "Double time feel" "straight eights" }
    s1*4
    s1*4
    s1*4 \break

    \startSection "I"
    s1*4
    s1*4
    s1*4 \break

    \startSectionWithLabel "J" "Solos"
    \repeat volta 2 { 
        \startRepeat
        s1*4
        s1*4
        s1*3
    }
    \alternative {
        { s1 \endRepeat }
        { s2 \dsAlCoda s2 }
    }
    \bar "|."
}

rehearsalMarkTweaks = \relative c' { 
 
    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT


    s1*2

    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A" 
    s1*5

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*5

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "C"
    s1*5

    \override Score.RehearsalMark.extra-offset = #'( -2 . 2 )
    % "D"
    s1*2

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "E"
    s1*5
    
    \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    % "F"
    s1*12

    
    \override Score.RehearsalMark.extra-offset = #'( -3 . 1 )
    % "G" "Solos"
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -4 )
    % "H" 
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "I"
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    % "J" "Solos"
}

atCoda = <>^\markup { \translate #'( -12 . 1.75 ) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \key c \major
    \atCoda
    s1*4
    \bar "|."
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions

    s1*2 ||

    % A
    fs2:m7.7+ f:maj7 | fs:m7.7+ f:maj7 |  
    fs2:m7.7+ f:maj7 | fs:m7.7+ f:maj7 | fs4:dim7 b:dim7 e:dim7 a:dim7 || 

    % B
    d2:m7.7+ cs:maj7 | d:m7.7+ cs:maj7 |  
    d2:m7.7+ cs:maj7 | d:m7.7+ cs:maj7 | d4:dim7 g:dim7 c:dim7 f:dim7 ||

    % C
    bf2:m7.7+ a:maj7 | bf:m7.7+ a:maj7 |  
    bf2:m7.7+ a:maj7 | bf:m7.7+ a:maj7 | gs4:dim7 cs:dim7 fs:dim7 b:dim7 ||

    % D
    s1*2 

    % E
    fs2:m7.7+ f:maj7 | fs:m7.7+ f:maj7 |  
    fs2:m7.7+ f:maj7 | fs:m7.7+ f:maj7 | bf4:dim7 ef:dim7 gs:dim7 cs:dim7 || 

    % F
    fs1:m7.5- | s | s | fs4:7.5- b:7.5- e:7.5- a:7.5- |
    d1:m | s | s | d4:7.5- g:7.5- c:7.5- f:7.5- |
    bf1:m | s | s | s |


    % G 
    fs1:m7.5- | s | fs:m7 | fs4:7.5- b:7.5- e:7.5- a:7.5- |
    d1:m7.5- | s | d:m7 | d4:7.5- g:7.5- c:7.5- f:7.5- |
    bf1:m7.5- | s | bf:m7 | bf4:7.5- ds:7.5- gs:7.5- cs:7.5- |

    % H 
    fs2 cs | gs ds | bf1 | s | 
    bf2 f | c g | d1 | s | 
    d2 a | e b | fs1:m7.7+ | fs | 

    % I 
    fs2 cs | gs ds | bf1 | s | 
    bf2 f | c g | d1 | s |
    a2 d:m7 | gs:m g | fs1:m7.7+ | fs ||

    % J 
    fs2 cs | gs ds | bf1 | s | 
    bf2 f | c g | d1 | s |
    a2 d:m7 | gs:m g | fs1:m7.7+ | fs || fs ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
}

melodyA = \relative c'' {
    a2\f gs | d2. r8 fs ||
    es'8 fs r fs, es'? e r fs,? | es' fs es e r c? r c |
    r8 fs, es' [ fs ]  es? e r fs,? | es' fs es e r c? r c ~ | 2 
}

melodyB= \relative c' {
    r4 r8 d ||
    cs'8 d r d, cs' c r d, | cs' d cs c r gs r gs |
    r8 d cs' [ d ]  cs c r d, | cs' d cs c r gs r gs ~ | 2 
}

melodyC= \relative c'' {
    r4 r8 bf ||
    a'8 bf r bf, a' gs r bf,? | a' bf a gs r e r e |
    r8 bf a' [ bf ]  a gs r bf,? | a' bf a gs r e r e ~ | 2 
}

melodyD = \relative c'' {
    r4 f ||
    b4. e,8 bf'4. ef,8 | a4 gs8 g
}

melodyE = \relative c' {
    r4 r8 fs ||
    es'8 fs r fs, es'? e r fs,? | es' fs es e r c? r c |
    r8 fs, es' [ fs ]  es? e r fs,? | es' fs es e r c? r c ~ | 2 
}

melodyF = \relative c' {
    r4 r8 cs8-> ||
    c'1->\fp\< | r8\xff cs\ff bs8 [ a ] bs a gs^"L" cs, | e-> fs-> r4 r2 | r2 r4 r8 a-> | 
    gs'1->\fp\< | r8\xff a\f gs8 [ f ] gs f e a,\ff | c8-> 8 8 8 a4 g8-> a-> | r2 r4 r8 f-> |
    e'1->\fp\< | r8\xff f e [ df ] e df c f, | af-> bf-> r4 r2 | R1 ||
}

melodyG = \relative c'' {
    a1 | fs' | cs | c4 b bf a | 
    d1 | f | d | fs4 f e ef | 
    df1 | bf | df | d4 cs b gs ||
}

melodyH = \relative c'' {
    fs2. cs4 | gs'2. ef4 | bf2 r | bf16 16 r8 r4 r2 | 
    bf2. f4 | c'2. g4 | d1 | d'16 16 r8 r4 r2 | 
    d2. a4 | e'2. b4 | fs'2 a | as8 r r4 r2 ||
}

melodyI = \relative c'' {
    as8 gs as gs ~ 2 | as8 gs as gs ~ 2 | bf2 r4 d8 ef | d2. r4 |
    d8 c d c ~ 2 | d8 c d c ~ 2 | d2 r4 e8 g | fs4. a8 ~ 2 |
    fs8 e fs e ~ 4. 8 | fs8 e fs e d cs b bf | a2 fs16 gs a b \tuplet 6/4 { cs16 ds e fs gs a } | as4 r r2 ||
}

melodyJ = \relative c' {
    fs2. cs4 | gs'2. ef4 | bf'2 r4 bf16 16 r8 | r2 bf16 16 r8 r4 | 
    bf2. f4 | c'2. g4 | d1 | r4 d'16 16 r8 r2 | 
    d,2. a'4 | e2. b'4 | fs2 a' | as8 r r4 r2 || fs4 r r r8 fs, ||
}



melodyCoda = \relative c'' {
    d4 a'2 d,4 | fs f, f' b, | f'2 r4 bf | a8-> gs-> r4 r2 || 
}

melody = {
    \melodyA
    \melodyB
    \melodyC
    \melodyD
    \melodyE
    \melodyF
    \melodyG
    \melodyH
    \melodyI
    \melodyJ
}

\book {
  \bookOutputSuffix "alto-in-Eb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Eb Alto Sax"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaks
                    \melody
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
            indent = 3\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

