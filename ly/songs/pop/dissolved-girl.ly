\version "2.24.0"

titleLeft = "Dissolved"
titleRight = "Girl"
titleFull = "Dissolved Girl"
composerName = "G. Marshall, S. J. Hawley, M'Black, A. Vowles & R. del Naja"
lyricistName = \composerName
arranger = ""
copyright = ""

%{

killPreview ; rm dissolved-girl*pdf ; lilypond ly/songs/pop/dissolved-girl.ly ; for file in dissolved-girl*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/dissolved-girl*
lilypond ly/songs/pop/dissolved-girl.ly 
mv dissolved-girl*pdf pdf/songs/pop
for file in pdf/songs/pop/dissolved-girl*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

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

    \tempo 4 = 114
    \key f \minor
    \time 4/4

    \startSection "Verse 1" %    Shame, such a shame
    s1*16

    \startSection "" 
    s1*8

    \startSection "Verse 2" %    Say, say my name
    s1*16
    
    \startSection "Chorus 1" 
    \segnoDoubleBar
    s1*16

    \startSectionWithLabel "Instrumental" "Play 6X"
    \startRepeat
    s1*7
    \fine
    s1

    \startSection "Verse 3" %    Fade, made to fade
    \endRepeat
    s1*23
    s2 <>^\dsFineMarkup s2
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Verse 1" %    Shame, such a shame
    s1*16 \break

    % "" 
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Verse 2" %    Say, say my name
    s1*16
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Chorus 1" 
    s1*16

    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Instrumental" "Play 6X"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Verse 3" %    Fade, made to fade
    s1*4 \break 
    s1*8 \break 
 
}

rehearsalMarkTweaksForBass = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t


}

chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}

melodyVerseOne = \relative c'' { 
    c1 ~ | 4 r c4 8 ef ~ | 1 ~ | 2 r | 
    g4 af g af8 g ~ | 4 ef4 4 f8 c ~ | 2. r4 | R1 | 

    c8( bf c2. ~ | 4 ) r ef f ~ | 4 c2. ~ | 4 r r2 |  
    g'4 af g af8 g ~ | 4 ef4 8 f4. ~ | 4 c2. ~ | 4 r r2 ||
}

melodyVerseTwo = \relative c'' { 
    c8 ( bf c2. ~ | 4 ) r f4 c ~ | 4 ef2. ~ | 2. r4 |   
    g4 af g af8 g ~ | 4 ef4 4 8 f ( ~| 8 ef4. ) r2 | R1 |   

    g4 af g af8 bf ~ | 4 af8 g ~ 4 ef8 g ( ~ | g8 f4. ~ 4 ) r4 | R1 | 
    g4 af g af8 g ~ | 4 ef4 4 c | f2. r4 | r2  
}

melodyChorusPickup = \relative c' {
    f8 8 r4 ||
}

melodyChorus = \relative c'' {
    f4 r ef r8 c ~ | 8 f,4. 8 4. | ef'4 r d4. c8 ~ | 4 r r8 f,4. |
    ef'4 r d4. c8 ~ | 4 f, ef8 f4. | ef'4 r d4. c8 ~ | 4 r r2 | 
    ef4 r d4. c8 ~ | 8 f,4. ef8 f4. | ef'4 r d4. c8 ~ | 4 r r2 | 
    ef4 r d4. c8 ~ | 8 f,4. ef8 f4. | ef'4 r d4. c8 ~ | 4 r r2 | 
}

melodyVerseThree = \relative c'' { 
    c4 ( bf8 c ~ 2  ~ | 4 ) r c4 8 ef ~ | 1 ~ | 2 r |    
    g4 af g af8 g ~ | 4 ef4 4 f8 c ~ | 2 r | R1 |     

    c8 ( bf c4 ~ 8 bf4. ~ | 4 ) r ef c ~ | 4 ef2. ~ | 4 r r2 | 
    g4 af g af8 g ~ | 4 ef8 8 ~ 4 c8 f ( ~ | 8 ef4. ~ 4 ) r4 | R1 | 

    g4 af g af8 bf ~ | 4 af8 g8 ~ 4 ef8 g ( ~ | 8 f4. ~ 4 ) r4 | R1 | 
    g4 af g af8 g ~ | 4 ef4 4 c | f2 r | r 
}



melody = {
    \melodyVerseOne
    <>\xp
    R1*8
    \melodyVerseTwo
    \melodyChorusPickup
    \melodyChorus
    <>\xp
    R1*8
    \melodyVerseThree
    \melodyChorusPickup
}

bassLine = {
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 3 { \skip 1 }
    
    Shame, such a shame
    Think I kin -- da lost my -- self a -- gain
    Day, yes -- ter -- day
    Real -- ly should be lea -- ving, but I stay

    Say, say my name
    Need a lit -- tle love to ease the pain
    Need a lit -- tle love to ease the pain
    S'e -- asy to re -- mem -- ber when it came

    'Cause it feels like I've been
    I've been here be -- fore
    You're not my sav -- iour
    But I still don't go
    Feels like some -- thing
    That I've done be -- fore
    I could fake it
    But I'd still want more

    Fade, made to fade
    Pas -- sion's ov -- er -- ra -- ted a -- ny -- way
    Say, say my name
    Need a lit -- tle love to ease the pain
    Need a lit -- tle love to ease the pain
    S'e -- asy to re -- mem -- ber when it came


    'Cause it
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
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
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
}

% \book {
%   \bookOutputSuffix "Bass-for-C"
%     \header {
%         subtitle = ""
%         poet = "Bass"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \clef bass
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \rehearsalMarkTweaksForBass
%                     \bassLine
%                 >>
%             }
%         >>
%     }
% }

