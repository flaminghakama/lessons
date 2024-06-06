\version "2.24.0"

titleLeft = "I Get A Kick"
titleRight = "Out Of You"
titleFull = "I Get A Kick Out Of You"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm i-get-a-kick-out-of-you*pdf ; lilypond ly/songs/standards/i-get-a-kick-out-of-you.ly ; for file in i-get-a-kick-out-of-you*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/i-get-a-kick-out-of-you*
lilypond ly/songs/standards/i-get-a-kick-out-of-you.ly 
mv i-get-a-kick-out-of-you*pdf pdf/songs/standards
for file in pdf/songs/standards/i-get-a-kick-out-of-you*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chords" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

structure = \relative c' { 

    \key ef \major
    \time 4/4

    \startSection "A"
    s1*8 \break 
    \startSection ""
    s1*8 \break

    \startSection "A"
    s1*8 \break 
    \startSection ""
    s1*8 \break

    \startSection "B"
    s1*8 \break 
    \startSection ""
    s1*8 \break

    \startSection "A"
    s1*8 \break 
    \startSection ""
    s1*8 \break
    \bar "||"
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*4 \break 
    s1*4
    \bar "|."    
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 2 )
    % \startSection "A"
    s1*8 
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % \startSection "A"
    s1*8 
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % \startSection "B"
    s1*8 
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % \startSection "A"
    
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    f1:m7 | bf:7 | ef2 df:7 | c1:7 | 
    f1:m7 | bf:7 | g:aug7 | c:7 |
    f1:m7 | bf:7 | g:m7 | c:7 |
    f1:m7 | bf:7 | ef | c:7 ||

    f1:m7 | bf:7 | ef2 df:7 | c1:7 | 
    f1:m7 | bf:7 | g:m7 | c:7 |
    f1:m7 | bf:7 | df:7.11+ | c:7 |
    f1:m7 | bf:7 | ef | s ||

    bf1:m | s | s | s | 
    bf1:m | s | g:aug7 | c:aug7 |
    f1:maj7 | s | g:aug7 | c:7 |
    f1:7 | s | b:7 | bf2.:7 c4:7 ||

    f1:m7 | bf:7 | g1:m7 | c1:7 | 
    f1:m7 | bf:7 | ef2 g:7 | c1:m7 |
    f1:m7 | bf2:7 af:7 | g1:7 | c:7 |
    f1:m7 | bf:7 | ef2 af:7 | g:m7.5- c:aug7 ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
}

melody = \relative c' { 
    \accidentalStyle default

    r4 c d ef | \tuplet 3/2 { f2 g af } | bf1 ~ | 1 |
    r4 c, d ef | \tuplet 3/2 { f2 g af } | bf2 af4 g | g2. 4 | 
    af2 g4 f | \tuplet 3/2 { f2 ef f } | g1 ~ | 2. c,4 | 
    f4 g af bf ~ | 4 af2 g4 | ef1 | R ||

    r4 c d ef | \tuplet 3/2 { f2 g af } | bf1 ~ | 1 |
    r4 c, d ef | \tuplet 3/2 1 { f2 g af  | bf c a | bf c a } | 
    \tuplet 3/2 1 { bf2 c a | bf a af } | g1 ~ | 2. c,4 |
    f2 g4 af | bf2 af4 g | ef1 | R ||

    r4 ef f g | \tuplet 3/2 { af2 bf c } | df2. c4 | df2. c4 | 
    c2. bf4 | c2. bf4 | 1 | c, |
    r4 c d e | f2 g4 af | bf2. af4 | bf2. af4 | 
    g8 8 8 8 ~ 2 | f4 c'2 f,4 | ef1 | d ||

    r4 c d ef | \tuplet 3/2 { f2 g af } | bf1 ~ | 1 |
    r4 c, d ef | \tuplet 3/2 1 { f2 g af  | bf c d | ef f d } | 
    \tuplet 3/2 1 { ef2 d c | d c bf } | g1 ~ | 2. c,4 |
    f2 g4 af | bf c2 d4 | ef1 | R ||
}
melodyForFlats = \relative c'' { 
    \melody
}

melodyCoda = \relative c'' { 
    \accidentalStyle default
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I get no kick from cham -- pagne.
    Mere al -- co -- hol does -- n't thrill me at all.
    So tell me why should it be true?
    That I get a kick out of you.


    Some like the per -- fume from Spain.  
    I'm sure that  if I took  ev -- en one sniff 
    it would  bore me ter -- rif --  ic -- ally too,
    yet I get a kick out of you

    I get a kick ev -- ery time I see you
    stand -- ing there be -- fore me.
    I get a kick though it's clear to see
    you ob -- vi -- ous -- ly do not a -- dore me

    I get no kick in a plane.
    Fly -- ing too high with some gal in the sky
    is my i -- dea of noth -- ing to do,
    yet I get a kick out of you.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        subtitle = "(real book key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(real book key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(real book key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
