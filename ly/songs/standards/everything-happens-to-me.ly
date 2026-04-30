\version "2.24.0"

titleLeft = "Everything Happens"
titleRight = "To Me"
titleFull = "Everything Happens To Me"
composerName = "M. Dennis"
lyricistName = "T. Adair"
arranger = ""
copyright = ""

%{

killPreview ; rm everything-happens-to-me*pdf ; lilypond ly/songs/standards/everything-happens-to-me*.ly ; for file in everything-happens-to-me*pdf ; do open -a Preview $file ; done

killPreview
rm everything-happens-to-me*pdf
lilypond ly/songs/standards/everything-happens-to-me*.ly
mv everything-happens-to-me*.pdf pdf/songs/standards
for file in pdf/songs/standards/everything-happens-to-me*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fix lyrics" ; git push 
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
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #0

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
    \key bf \major

    \time 4/4

    \partial 8 
    s8

    \startSection "A" 
    \repeat volta 2 { 
        \startRepeat
        s1*6 
    }
    \alternative { 
        { s1*2 \endRepeat }
        { s1*2 }
    }

    \startSection "B"
    s1*8 

    \startSection "A"
    s1*8 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s8

    % "A" 
    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
        s1*6 
        s1*2
        s1*2 \break 

    % "B"
    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    s1*8 \break 

    % "A"
    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 
    c2:m9 f4:9 f:9/ef | d2:m7 cs:dim7 | 
    c2:m7 f4:9 f:9/ef | d2:m7.5- g:7 | 
    c2:m7 ef4:m7 af:7.9- | d2:m7 g:9 | 
    c2:m7 f:7 | bf:maj7 g:7 || c2:m7 f:7 | bf1:6 ||

    f2:1.3-.5.7.11 bf:aug7.8+.9+ | ef:maj9 c:m7 | 
    f:1.3-.5.7.11 bf:7.9- | ef1:maj9 |
    e2:m11 a:7.8+.9+ | d:maj7 b:m7 | g4:m g:m7.7+ g:m7 c:7 | c2:m7 f:7 ||

    c2:m9 f4:9 f:9/ef | d2:m7 cs:dim7 | 
    c2:m7 f4:9 f:9/ef | d2:m7.5- g:aug7 | 
    c2:m7 ef4:m7 af:7.9- | d2:m7 g:9 | 
    c2:m7 f:13 | bf1:6 ||
}


chordsFormFake = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 
    c2:m9 f4:9 f:7/ef | d2:m7 cs:dim7 | 
    c2:m7 f4:9 f:7/ef | d2:m7.5- g:7 | 
    d2:dim7 ef:m6 | d:m7 g:13 | 
    c2:m7 f:7 | bf:maj7 g:7 || c2:m7 f:7 | bf1:6 ||

    f2:m7 bf:aug7 | ef:maj9 ef:6 | f:m7 bf:7.9- | ef1:maj9 |
    e2:m11 a:aug7 | d:maj9 d:6 | g:m7 c:9 | c:m7 f:7 ||

    c2:m9 f4:9 f:7/ef | d2:m7 cs:dim7 | 
    c2:m7 f4:9 f:7/ef | d2:m7.5- g:aug7 | 
    d2:dim7 ef:m6 | d:m7 g4:13 g:aug7 | 
    c2:m7 f:7 | bf1:6 ||
}
chordsFormReal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 
    c2:m7 f:7 | s1 | 
    c2:m7 f:7 | s1 | 
    c2:m7 ef4:m7 af:7.9- | s2 g:7 | 
    s1 | s1 || s1 | bf1:6.9 ||

    s2 bf:7.9+ | ef:maj7 c:7.9- | s2 bf:7.9+ | ef1:maj7 |
    e2:m7 a:7.9+ | d1:maj7 | s2 c:7 | s1 ||

    c2:m7 f:7 | s1 | 
    c2:m7 f:7 | s1 | 
    c2:m7 ef4:m7 af:7.9- | s2 g:7 | 
    s1 | bf1:6.9 ||
}
chordsFormSher = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 
    s2 f:7 | s1 | 
    s2 f4:9 ef:7| s1 | 
    b2:dim7 c:m7.5- | s g:9 | 
    s1 | bf:maj7 || s1*2 ||

    f2:1.3-.5.7.11 bf:aug7.9+ | ef1:maj7 | f2:1.3-.5.7.11 bf:aug7.9- | ef1:maj7 |
    e2:1.3-.5.7.11 a:aug7.9+ | d:maj7 b:m7 | s c:7 | f:1.4.5.7 f:7 ||

    s2 f:7 | s1 | 
    s2 f4:9 ef:7| s1 | 
    b2:dim7 c:m7.5- | s g:9 | 
    s2 f:13 | s1 ||
}
chordsFormSherAlt = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 
    s1*4 
    c2:m7 af:9 | s1 | 
    s2 b:7 | s1 || s1*2 ||

    s1 | ef2:maj7 c:m7 | s1 | s |
    s1*2 | g4:m g:m7.7+ g:m7 c:7 | s1 ||

    e2:m7.5- ef:m6 | s1*3 | 
    c2:m7 af:9 | s1 | 
    s2 b:7.9+ | s1 || 
}
chordsFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef2 ff:dim7 | f:m7 gf:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | g:7 c:7 | f:7 bf:7 | 

    ef2 ff:dim7 | f:m7 gf:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | ef:7 af | ef d4:7.9- g:7  | 

    c1:m | af:7/c | f:7/c | c:7 | 
    f1:6 | c2:m7 f:9 | g:7.9+ c:7 | f:7 bf:7 | 

    ef2 ff:dim7 | f:m7 gf:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | af1:9 | ef:6.9 |
}

melodyACommon = \relative c'' { 
    g8 ||
    d'8 8 8 ef  c8 8 bf a | c8 8 8 d  bf4 r8 g | 
    bf8 8 8 c  a8 8 g f | af8 8 8 bf  g4 r8 d | 
    f8 8 8 g  ef fs a bf | c8 8 \tuplet 3/2 { c8 8 a ~ } 2 |
}


melodyFirstEndings = \relative c'' { 
    g8 8 8 a ~ 8 8 8 f ~ | 2. r8 g || g8 8 8 a8 ~ 8 8 8 bf ~ | 2. r8 
}

melodyB = \relative c'' { 
    bf8 ||
    bf8 8 8 8  df8 8 cf df | bf8 8 2 r8 bf | 
    bf8 8 8 8  cf af f ef | bf'2. r8 bf |
    a8 8 8 8  c8 8 bf c | a8 8 2 r8 a | 
    bf8 8 8 8  8 8 a bf | c2. r8  
}

melodyLastEndings = \relative c'' { 
    g8 8 8 d' ~ 8 8 8 bf ~ | 2. r4 ||
}

melody = {
    \melodyACommon
    \melodyFirstEndings
    \melodyB
    \melodyACommon
    \melodyLastEndings
}

lyricsOriginalHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I make a date for golf and 
    you can bet your life it rains,

    I try to give a part -- y
    and the guy up -- stairs com -- plains,

    I guess I'll go thru life
    just catch -- in' colds and mis -- sin' trains,
    Ev -- 'ry -- thing Hap -- pens To Me.  I 

    Ev -- 'ry -- thing Hap -- pens To Me.  

        At first my heart tho't
        you could break this jinx for me,
        
        That love would turn the trick
        to end des -- pair,
        
        but now, I just can't fool
        this head that thinks for me,

        I've mort -- gaged all my 
        cast -- les in the air.

    I've tel -- e -- graphed and phoned, 
    I sent an "\"Air" Mail Spec -- "ial\"," too,

    your ans -- wer was "\"Good" -- "bye,\""
    and there was e -- ven post -- age due.

    I fell in love just once
    and then it had to be with you,
    Ev -- 'ry -- thing Hap -- pens To Me.

}

lyricsOriginalHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }

    ne -- ver miss a thing,
    I've had the meas -- les and the mumps,

    and ev -- 'ry time I play my ace
    my part -- ner al -- ways trumps,

    I guess I'm just a fool
    who ne -- ver looks be -- fore he jumps,
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I make a date for golf and 
    you can bet your life it rains,

    I try to give a part -- y
    and the guy up -- stairs com -- plains,

    I guess I'll go thru life
    just catch -- in' colds and mis -- sin' trains,
    Ev -- 'ry -- thing Hap -- pens To Me.  I 

    Ev -- 'ry -- thing Hap -- pens To Me.  

        At first my heart tho't
        you could break this jinx for me,
        
        That love would turn the trick
        to end des -- pair,
        
        but now, I just can't fool
        this head that thinks for me,

        I've mort -- gaged all my 
        cast -- les in the air.

    I've Inst -- a -- grammed and phoned, 
    I sent an e-  -- mail spec -- ial boo,

    your ans -- wer was to ghost me 
    leav -- ing me with -- out a clue.

    I fell in love just once
    and then it had to be with you,
    Ev -- 'ry -- thing Hap -- pens To Me.

}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }

    ne -- ver miss a thing,
    I've had the co -- vid and the mumps,

    and ev -- 'ry time I play my ace
    my part -- ner al -- ways trumps,

    I guess I'm just a fool
    who ne -- ver looks be -- fore he jumps,
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Bb-for-C" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            % \new ChordNames \transpose c c  { 
            %                     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %                     \chordsFormSherAlt
            %                 }
            % \new ChordNames \transpose c c  { 
            %                     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %                     \chordsFormSher
            %                 }
            % \new ChordNames \transpose c c  { 
            %                     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %                     \chordsFormReal
            %                 }
            % \new ChordNames \transpose c c  { 
            %                     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %                     \chordsFormFake
            %                 }
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm
                            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

