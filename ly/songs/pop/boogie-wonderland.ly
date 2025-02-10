\version "2.24.0"

titleLeft = "Boogie"
titleRight = "Wonderland"
titleFull = "Boogie Wonderland"
composerName = "A. Willis & J. Lind"
lyricistName = ""
arranger = ""
copyright = ""

%{

killPreview ; rm copacabana*pdf ; lilypond ly/songs/pop/copacabana.ly ; for file in copacabana*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/copacabana*
lilypond ly/songs/pop/copacabana.ly 
mv copacabana*pdf pdf/songs/pop
for file in pdf/songs/pop/copacabana*pdf ; do op $file ; done 

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
    \key g \minor
    \time 4/4

    s1 
    \startSection "Kick"
    s1*4

    \startSection "Bass"
    s1*4

    \startSection "Chorus 1"
    s1*8

    \startSection "Verse 1"
    s1*8
    \startSection ""
    s1*8

    \startSection "Chorus 2"
    s1*8

    \startSection "Verse 2"
    s1*12

    \startSection "Pre-Bridge 1"
    s1*2

    \startSection "Bridge 1"
    s1*3
    s1*3
    s1*4
    s1*3

    \startSection "Chorus 3"
    s1*8

    \startSection "Verse 3"
    s1*12

    \startSection "Chorus 4"
    s1*8

    \startSection "Instrumental Chorus"
    s1*8

    \startSection "Instrumental Verse"
    s1*8
    \startSection ""
    s1*8
    \startSection ""
    s1*3

        \startSection "Pre-Bridge 2"
    s1*2

    \startSection "Bridge 2"
    s1*3
    s1*3
    s1*4
    s1*3

    \startSection "Chorus 5"
    s1*8

    \startSection "Verse 5"
    s1*8

    \startSection "Chorus 6"
    s1*8

    \startSection "Verse 5"
    s1*2

    \bar "|."
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

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -5 . 0 )
    % "Bass"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . -2 )
    % "Verse 1"
    s1*12

    \pageBreak
    
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -3 )
    % "Chorus 1"
    s1*3   
    s1*3  
    s1*3 
    s1

    % \once \override Score.RehearsalMark.extra-offset = #'( -5 . -1 )
    % "Bridge 1"
    s1*5 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -3 )
    % "Bridge"
    s1*14
}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    % "Bass"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "Verse 1"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -2 )
    % "Chorus 1"
    s1*4 \break 
    s1*4 \break 

    \pageBreak

    s1*2  
    % "Bridge 1"
    s1*2 \break
    s1*2  
    s1 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -8 . -3 )
    % "Bridge"
    s1*3 \break 
    s1*3 \break 
    s1*4 \break 
    s1*4 
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

bellsIntro = \drummode { 
}

congaIntro = \drummode { 
}

stringsIntro = \relative c''' {
}

bassIntro = \relative c { 
}


melodyVerseOne = \relative c' { 
    \accidentalStyle default
    d8 e r f ~ 8 a4 8 ~ | 8 d,4 f8 ~ 8 a4 8 ~ | 
    a8 d,4 f8 ~ 8 a4 8 ~ | 8 c4 d8 ~ 8 c d4 |


    d,8 e r f ~ 8 a ( g ) a ~ | 8 d,4 f8 ~ 8 a ( g ) a ~ | 
    a8 d,4 f8 ~ 8 a4 8 ~ | 8 c4 d8 ~ 8 c d4 |

    r8 f r e ~ 8 c4 a8 ~ | 8 f'4 e8 ~ 8 c4 a8 ~ | 
    a8 4 8 ~ 8 g a8 8 | r c r d  r c d4 |  

    r8 <f' d> r <e c>  r <c a > ( <bf g> ) <a f> | 
    r8 <f' d> r <e c>  r <c a > ( <bf g> ) <a f> | 

    r8 f,4 e8 ~ 8 d4. 8 | f8 4 d16( f  c d a c f4 ) |  
}

melodyVerseTwo = \relative c' { 
    \accidentalStyle default
    d8 e r f ~ 8 a4 8 ~ | 8 d,4 f8 ~ 8 a4 8 ~ | 
    a8 d,4 f8 ~ 8 a4 8 ~ | 8 c8 8 d8 ~ 8 c d16( c d8 ) |

    r8 a4 g8 ~  8 f4 8|  

    d,8 e r f ~ 8 a ( g ) a ~ | 8 d,4 f8 ~ 8 a ( g ) a ~ | 
    a8 d,4 f8 ~ 8 a4 8 ~ | 8 c4 d8 ~ 8 c d4 |

    r8 f r e ~ 8 c4 a8 ~ | 8 f'4 e8 ~ 8 c4 a8 ~ | 
    a8 4 8 ~ 8 g a8 8 | r c r d  r c d4 |  

    r8 <f' d> r <e c>  r <c a > ( <bf g> ) <a f> | 
    r8 <f' d> r <e c>  r <c a > ( <bf g> ) <a f> | 

    r8 f,4 e8 ~ 8 d4. 8 | f8 4 d16( f  c d a c f4 ) |  
    
}



bassVerse = \relative c, { 
}

melodyChorus = \relative c'' {
    d4 r r2 | r a8 g f g | g4 ( f ) r2 | f4 r f r | 
    d4 r r2 | r a8 g f g | a'1 ~ | 2. r4 | 
}

bassChorus = \relative c, { 
}

melodyBridgeOne = \relative c' { 
}

bgVocalBridgeOne = \relative c'' { 
}

melodyFirstEnding = \relative c'' { 
}

bassBridgeOne = \relative c { 
}

melodyVerseTwo = \relative c'' { 
}

bgVocalSecondEnding = \relative c'' { 
}

melodyBridge = \relative c'' { 
}

melodyDs = \relative c'' { 
}

hornsBridge = \relative c''' { 
}

bassBridge = \relative c { 
}


melody = {
    << 
        \transpose c c, \stringsIntro \\
        \transpose c, c { s1*3 \bassIntro }
    >>
    \melodyVerse
    \melodyChorus

    % \bgVocalBridgeOne

    <<
        { \voiceOne \bgVocalBridgeOne } 
        \new Voice { \voiceTwo \melodyBridgeOne }
    >>

    \oneVoice
    \melodyFirstEnding
    \bgVocalSecondEnding
    <<
        \new Voice { \voiceTwo \stemUp \tieUp \hornsBridge }
        { \voiceOne \stemDown \tieDown \tupletDown \melodyBridge }
    >>
    \oneVoice
    \melodyDs
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

