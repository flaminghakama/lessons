\version "2.24.0"

titleLeft = "White Lines"
titleRight = "(Don't Do It)"
titleFull = "White Lines (Don't Do It)"
composerName = "S. Robinson & M. Glover"
lyricistName = ""
arranger = ""
copyright = ""

%{

killPreview ; rm white-lines*pdf ; lilypond ly/songs/pop/white-lines.ly ; for file in white-lines*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/white-lines*
lilypond ly/songs/pop/white-lines.ly 
mv white-lines*pdf pdf/songs/pop
for file in pdf/songs/pop/white-lines*pdf ; do op $file ; done 

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

    \tempo 4 = 230
    \key g \minor
    \time 4/4

    s1
    \startSection "Hi-hat 2&4"
    s1*8

    \startSection "Kick echo"
    s1*8

    \startSection "Bass Intro"
    s1*8

    \startSection "Conga"
    s1*8

    \startSection "Freeze Rock"
    s1*4

    \startSection "Build Up"
    s1*8

    \startSectionWithLabel "Groove" 
    s1*16

    \startSection "Chorus I"
    s1*32

    \startSection "Verse I"
    s1*16

    \startSection "Bridge"
    s1*16

    \startSection "Pre-chorus II"
    s1*8

    \startSection "Groove II"
    s1*8

    \startSection "Rangdang"
    s1*8

    \startSection "Chorus II"
    s1*32

    \startSection "Verse II"
    s1*16

    \startSection "Bridge II"
    s1*16

    \startSection "Pre-chorus III"
    s1*8

    \startSection "Groove III"
    s1*8

    \startSection "Chorus III"
    s1*32

    \startSection "K Sugar"
    s1*8

    \startSection "Verse III"
    s1*16

    \startSection "Bridge III"
    s1*16

    \startSection "Pre-chorus IV"
    s1*8

    \startSection "Groove IV"
    s1*8

    \startSection "Chorus IV"
    s1*32

    \startSection "Groove IV"
    s1*8

    \startSection "Verse IV"
    \startRepeat
    s1*8
    \endRepeat
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key g \minor 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*3 
    %\break
    s1*4
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t


}
chordsCoda = \chordmode { 
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

bellsIntro = \relative c''' { 
    R1 | 
    r2 r4 <c e g'>4 ~ | 1 ~ | 2 r4 <f, a c>4 ~ | 1 ~ | 
    <f a c>2 r | <a' c e g>1 ~ | 2 <e g c'> ~ | 1 ||  
}

melodyIntro = \relative c' {
    r2 r4 a ~ | 
    a4 g8. 16 ~ 4 r  | R1*3 |   
    r4 c 2 | R1 | c4 2 r4 | R1 | 
}

bassIntro = \relative c { 
    bf8 c c bf  c c bf c | c c c, c r2 | 
    bf'8 c c bf  c c bf c | c c c, c r2 |
    bf'8 c c bf  c c bf c | bf c c bf  c c bf c  |
    bf8 c c bf  c c bf c | c c c, c r2 |
}

congaIntro = \drummode { 
    d4 f f d8 8 ~ | 8 8 f4 d8 8 8 8 |    
    d4 f f d8 8 ~ | 8 8 f4 d8 8 8 8 |    
    f4 4 4 8 d8 ~ | 4 f f a, | d4 f8 8 ~ 4 d8 8 ~ | 8 8 f4 4 a, |    
}

freezeRock = \relative c' { 
    f2 r | R1 | f4-> 4 4 4 | 4 4 4 4 | 
}

buildUp = <<
    \relative c' { 
        g1 ~ | 1 | 
        <g b>1 ~ | 1 |
        <g b d>1 ~ | 1 | 
        <g b d f a>1 ~ | 1 | 
    } 
    \relative c' { 
        s1*7 
        f2 ( g ) 
    }
>>

bassGroove = \relative c { 
    bf8 c4 bf8 c4 bf8 c ~ | c bf c c, r2 | 
    bf'8 c4 bf8 c4 bf8 c ~ | c bf c c, r2 | 
    bf'8 c4 bf8 c4 bf8 c ~ | c bf c bf  c4 bf8 c ~ 
    c8 bf c bf  c4 bf8 c ~ | c bf c c c,4 r | 
}

bassGrooveVoice = \relative c' { 
    R1 | r2 c | R1 | <gs' b>2 <a c>4 r | 
    R1`| r2 <a c>4 r | R1 | <gs' b>2 <a c>4 r |

    R1`| r2 <a c>4 r | R1 | <gs' b>2 <a c>4 r |
    R1`| r2 <a c>4 r | R1 | <gs' b>1 ||
    <a c>4 r |
}

bassGrooveDrums = \drums { 
    \repeat percent 3 { hh8 8 8 8 8 8 8 8 | } 
    r2 sn4 r | 
    bd4 r sn r | bd8 8 r4 sn r |  
    bd4 r sn r | bd8 8 r4 sn r |  

    bd4 r sn r | bd8 8 r4 sn r |  
    bd4 r sn r | bd8 8 r4 sn r |  
    bd4 r sn r | bd8 8 r4 sn r |  
    bd4 r sn r | bd8 8 sn8 8 8 8 8 8 |  
}

bgVoiceChorusOne = \relative c' { 
    g4 r r e ~ | 1 ~ | 2 r | r e4 4 | 
    f4. g8 ~ 4 4 ~ | 8 f e2. ~ | 2 r | R1 |  

    g4 r r e ~ | 1 ~ | 2 r | r e4 4 | 
    f4. g8 ~ 4 4 ~ | 8 f e2. ~ | 2 r | R1 |  

    e4 4 4 d8 e ~ | 8 d e4 | 
    e8 8 4 e8 8 d e ~ | 8 d e4 r d | 
    g4 r r e ~ | 1 ~ | 2 r | f2 g | 
    e1 ~ | 1 ~ | 1 ~ | 2 e' |
    R1*4 
}
bgVoiceChorusTwo = \relative c' { 
    g4 r r e ~ | 1 ~ | 2 r | r4 r8 e8 4 4 | 
    f4. g8 ~ 4 4 ( ~ | 8 f e2. ~ | 2 ) r | R1 |  

    g4 r r e ~ | 1 ~ | 2 r | r4 e8 8 4 4 | 
    f4. g8 ~ 4 4 ( ~ | 8 f e2. ~ | 2 ) r | R1 |  

    e4 8 8 4 d8 e ~ | 8 d e4 | 
    e8 8 8 8 4 d8 e ~ | 8 d e4 r d | 
    g4 r r e ~ | 1 ~ | 2 r | f2 g | 
    e1 ~ | 1 ~ | 1 ~ | 2 e' |
    R1*4 
}
bgVoiceChorusThree = \relative c' { 
    e8 8 4 g e ~ | 1 ~ | 2 r | R1 |
    d4. e8 ~ 4 4 ~ | 1 ~ | 2 r | R1 |  

    e8 8 8 8 g4. e8 ~ | 1 ~ | 2 r | r e4 4 | 
    d4. e8 ~ 4 4 ~ | 1 ~ | 2  r | R1 |  

    R1*8 | 
 
    g4 r r e ~ | 1 ~ | 2 r | f2 g | 
    e1 ~ | 1 ~ | 1 ~ | 2 e' |
    R1*4 
}
melodyChorusOne = \relative c' { 

}

melodyVerseOne = \relative c' { 

}

bridgeHorns = \relative c'' { 
    r4 g8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f d df  c bf g f | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f d df  c bf g f | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f d df  c bf g f | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f r4 r2 || g'4
}

bridgeIIIMelody = \relative c'' { 
    r4 g8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f d df  c bf g f | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | bf a g f  d c bf g | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    r4 g8 f  r d f [ d ] | g f d df  c bf g f | 

    r4 g'8 f  r d f [ d ] | f g r f  r d f [ g ] | 
    bf8 a g f  bf a g f | df c bf4 r2 || g'4 
}

rangadangVoice = \relative c' { 
    e8 8 4  8 8 d e ~ | 8 8 4 r2 | 
    e8 8 4  8 8 d e ~ | 8 8 4 r2 | 
    e8 8 4  8 8 d e ~ | 8 8 4  8 8 d e ~ |  
    e8 8 4  8 8 d e ~ | 8 8 4   |  
 }

bassVerse = \relative c, { 
}

melodyChorus = \relative c'' {
    d4 r r2 | r a8 g f g | g4 ( f ) r2 | f4 r f r | 
    d4 r r2 | r a8 g f g | a'1 ~ | 2. r4 | 
}


melodyKSugar = \relative c' { 
    e2 r | r e4 4 | R1 | r2 e | 
    R1 | r2 e4 4 | R1 | r2 e ||
}

melodyChorusOne = \relative c' { 
    s1*8
    s1*8
    s1*8
    s1*8
    s1*4
}
melodyVerseOne = \relative c' { 
    s1*8
    s1*8
}

melodyBridgeOne = \relative c' {
    g2 r | R1 | g2 r | R1 | 
    g2 r | R1 | g2 r | R1 | 
    g2 r | R1 | g2 r | R1 | 
    g2 r | R1 | g2 r | r g | 
}

melody = {

    \melodyIntro
    s1*8
    \bassIntro
    s1*8
    \freezeRock
    \buildUp
    \bassGrooveVoice

    \melodyChorusOne
    \melodyVerseOne 




rangadangVoice = \relative c' { 
    e8 8 4  8 8 d e ~ | 8 8 4 r2 | 
    e8 8 4  8 8 d e ~ | 8 8 4 r2 | 
    e8 8 4  8 8 d e ~ | 8 8 4  8 8 d e ~ |  
    e8 8 4  8 8 d e ~ | 8 8 4   |  
 }

bassVerse = \relative c, { 
}

melodyChorus = \relative c'' {
    d4 r r2 | r a8 g f g | g4 ( f ) r2 | f4 r f r | 
    d4 r r2 | r a8 g f g | a'1 ~ | 2. r4 | 
}


melodyKSugar = \relative c' { 
    e2 r | r e4 4 | R1 | r2 e | 
    R1 | r2 e4 4 | R1 | r2 e ||
}

    \startSection "Chorus I"
    s1*32

    \startSection "Verse I"
    s1*16

    \startSection "Bridge"
    s1*16

    \startSection "Pre-chorus II"
    s1*8

    \startSection "Groove II"
    s1*8

    \startSection "Rangdang"
    s1*8

    \startSection "Chorus II"
    s1*32

    \startSection "Verse II"
    s1*16

    \startSection "Bridge II"
    s1*16

    \startSection "Pre-chorus III"
    s1*8

    \startSection "Groove III"
    s1*8

    \startSection "Chorus III"
    s1*32

    \startSection "K Sugar"
    s1*8

    \startSection "Verse III"
    s1*16

    \startSection "Bridge III"
    s1*16

    \startSection "Pre-chorus IV"
    s1*8

    \startSection "Groove IV"
    s1*8

    \startSection "Chorus IV"
    s1*32

    \startSection "Groove IV"
    s1*8

    \startSection "Verse IV"
    \startRepeat
    s1*8
    \endRepeat



}

bassLine = {
    R1*3 
    \bassIntro r2 ||
    
    \bassVerse
    \bassChorus
    \bassBridgeOne
    \bassBridge
}


melodyCoda = \relative c'' { 
    r2 r8 g fs [ ef ] ||
    <d a'>4. a'8 ~ 2 ~ | 4  r  g8. 16 ~  8 gs | 
    a4. 8 ~ 2 ~ | 4  r  g8. 16 ~  8 gs | 
    a1 | 1 ||
}

bassCoda = \relative c { 
    d1 ||
    g,8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. f'16 ~  8 c  r f, ~  16 fs8. |
    g8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. f'16 ~  8 c  r f, ~  16 fs8. |
    g1 ~ | 1 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

        Dance, Boo -- gie Won -- der -- land, hey, hey
        Dance, Boo -- gie Won -- der -- land

    Mid -- night creeps so slow -- ly in -- to hearts of men
    Who need more than they get
    Day -- light deals a bad hand to a wo -- man
    Who has laid too ma -- ny bets

    The mir -- ror stares you in the face and says
    "Ba -- by, uh, uh, it don't work"
    You say your prayers though you don't care
    You dance and shake the hat

        Dance, Boo -- gie Won -- der -- land, hey, hey
        Dance, Boo -- gie Won -- der -- land

    Sound fly through the night
    I chase my vi -- nyl dreams to Boo -- gie Won -- der -- land
    
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
    All the love in the world can't be gone
    All the need to be loved can't be wrong
    All the re -- cords are play -- ing and my heart keeps say -- ing
    "Boo -- gie Won -- der -- land, Won -- der -- land"
    
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
        Dance, dance (Boo -- gie Won -- der -- land), dance, dance
        Dance, dance (Boo -- gie Won -- der -- land), dance, dance
    
    Won -- der -- land
    Won -- der -- land
    All the love in the world can't be gone (love in the world can't be gone)
    All the need to be loved can't be wrong (need to be loved can't be wrong)
    All the re -- cords are play -- ing and my heart keeps say -- ing
    Boo -- gie Won -- der -- land, Won -- der -- land
    Dance, Boo -- gie Won -- der -- land, hey, hey
    Dance, Boo -- gie Won -- der -- land, hey, hey
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
    I find ro -- mance when I start to dance in Boo -- gie Won -- der -- land
    Dance, dance, dance (Boo -- gie Won -- der -- land), dance, dance, dance, dance
    Dance, dance (Boo -- gie Won -- der -- land), dance


    \repeat unfold 3 { \skip 1 }
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

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
  \bookOutputSuffix "Bass-for-C"
    \header {
        subtitle = ""
        poet = "Bass"
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
                \clef bass
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBass
                    \bassLine
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \clef bass
                    \transpose c c <<
                        \structureCoda
                        \bassCoda
                    >>
                }
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

% \book {
%   \bookOutputSuffix "for-Bb"
%     \header {
%         subtitle = ""
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose bf, c <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \rehearsalMarkTweaksForBb
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             % \new Lyrics \with { alignAboveContext = "staff" } {
%             %     \lyricsto "lead" { \lyricsHeadTwo } 
%             % }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "for-Eb"
%     \header {
%         subtitle = ""
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef, c <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \rehearsalMarkTweaksForEb
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             % \new Lyrics \with { alignAboveContext = "staff" } {
%             %     \lyricsto "lead" { \lyricsHeadTwo } 
%             % }
%         >>
%     }
% }

