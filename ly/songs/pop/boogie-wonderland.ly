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

    s1*4 
    g1:m9 | f:m9 | g:m9 | f8.:m7 fs16:m7 ~ 8 g:m7 s2 ||

    % Verse
    f2:m7 bf:11 | ef:maj7 bf:11 | a:m7.5- d:7.13- | g1:m9 | 
    f1:m7 | ef:maj7 | a2:m7.5- d:7.13- | g1:m7 |
    c2:dim7 g:m7 | c8.:dim7 d16:7.9- s8 g:m7 s2 | c:m7 d:7 | g4:m d:7/fs bf2:7/f ||

    % Chorus
    f2:m7 bf:11 | ef1:maj7 | f2:m7 bf:11 | ef:maj7 c:7 | 
    f2:m7 bf:11 | c:11 c:7 | f:m7 bf:7 | g:m7 c:9 |
    f1:m7 | d:7.9- | g:m9 | f:m7 | g:m9 | f8.:m9 fs16:m9 s8 g:m9 s2 ||
        f1:m9 || 

    % Bridge
    g1:m9 | s | bf:m9 | s | 
    df1:m9 | s | bf:m9 | s | 
    g1:m9 | fs:m9 ||

    g1:m9 | f:m9 | g:m9 | f8.:m7 fs16:m7 s8 g:m7 s2 ||

}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    d1:7.9- | g:m9 | f:m9 | g:m9 |
    f1:m9 | g:m9 | s ||
}


chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}

bellsIntro = \drummode { 
    timh8 timl8  8 timh16 16  r timl8 16 ~ 8 timh16 16 |
    timh8 timl16 16  8 timh16 16  r timl8 16 ~ 16 timh8 16 |
    timh16 8 16  8 16 timl16 ~  16 8 16  8 timh16 16 | 
    timh8 timl8  8 timh16 16   r timl8 16  8 timh |    
}

congaIntro = \drummode { 
    <cgh cgl>8. cgh16  8 cgl8  8 8  4 |
    <cgh cgl>8. cgh16  8 cgl8  8 8  4 |
    <cgh cgl>8. cgh16  8 cgl8  8 8  4 |
    <cgh cgl>8. cgh16  8 cgl8  8 8  4 |
}

stringsIntro = \relative c''' {
    s1*4 ||
    r4 r8 d8 ~ 4. df8 | c2.. f8 | d2.. df8 | c8. cs16 ~ 8 d        
}

bassIntro = \relative c { 
    r2 ef8 e f fs ||
    g8. 16 ~  8 d ~  8 g ~ 16 gf8. | f8. 16 ~  8 c ~  8 f ~ 16 fs8. |
    g8. 16 ~  8 d ~  8 g ~ 16 gf8. | f8. fs,16 ~  8 g 
}


melodyVerse = \relative c'' { 
    \accidentalStyle default
    r8 g bf [ c ] ||
    ef8. af,16 ~ 4  r8 ef'  d [ c ] | d8. g,16 ~ 4  r8 g  bf [ c ] | 
    d8 ef16 d ~  16 ef8 d16 ~  4  bf8 fs16 a ~ | 16 a8 16 ~  8 g16 a ~  8 g  bf c |

    ef8. af,16 ~ 4  r8 ef'  d [ c ] | d8. g,16 ~ 4  r8 g  bf [ c ] | 
    d8 ef  d16 ef8 d16 ~ 4  bf8 fs | g8 a  bf c16 d ~  8 bf g d |

    fs8. a16 ~  8 g  r bf g [ d ] | fs8. a16 ~  8 g  r4  g8 d |
    \tuplet 3/2 4 { ef8 f g  a bf c ~ }  16 a8.  bf8 c | d4 4 8.  
}

bassVerse = \relative c, { 
    f4 4 bf d | ef4  8 bf  ef8. 16  bf8 d | 
    a4 4 d4 4 | g,4 4 4 4 |

    f4 4 bf d | ef8. 16 ~  8 bf  ef4 bf | 
    a8. 16  8 ef' d4  a | g4  8 8  4  d' | 

    c8. bf16 ~  8 g  r2 | c8. d16 ~ 8 g, r2 | 
    c2 d | g4 fs f4. r8  |    
}

melodyChorus = \relative c'' { 
    c16 ~ 8 d ||
    ef8. af,16 ~  4  r8 ef'  d [ c ] | d8. g,16 ~  4  r4  r8 g | 
    \tuplet 3/2 2 { af4 bf c  ef d c } | d8. g,16 ~  4  r8 d'4 c8 |

    ef8. af,16 ~  4  r8 ef'  d [ c ] | d4. c8 ~ 2 | 
    \tuplet 3/2 2 { ef4 d ef  d c d } | c8. bf16 ~ 8 c  d bf  c d |

    ef4. c8 ~ 2 | r r8 g fs [ ef ] |
}

bassChorus = \relative c, { 
    f8. 16  8 af  bf4  d | ef4  bf  ef8 8  bf4 |
    f8. 16 ~  8 af  bf4  c8 d | ef4  bf   r8 c4. |

    f,8. 16 ~  8 af  bf4  c8 d | c8. 16 ~  8 8 ~ 2 |
    f,4  4   bf8. 16  r4 | g8. 16 ~  8 8  c8. 16 ~ 8 af |
    f8 16 16  8 bf  c8 8  bf c | d1 |
}

melodyBridgeOne = \relative c' { 
    d2 s | s1 | s1 |
}

bgVocalBridgeOne = \relative c'' { 
    a4. 8 ~ 2 ~ | 4  r  g8. 16 ~  8 gs | 
    a4. 8 ~ 2 |
}

melodyFirstEnding = \relative c'' { 
    \override Staff.NoteHead.style = #'diamond  
    g8. gs16 ~  8 a  
        \revert Staff.NoteHead.style
        r  g bf [ c ] ||
}

bassBridgeOne = \relative c { 
    g8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. f'16 ~  8 c  r f, ~  16 fs8. |
    g8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. fs'16 ~  8 g  r2 ||       
        f,8. f'16 ~  8 c  r f, ~  16 fs8. |
}

melodyVerseTwo = \relative c'' { 
    \accidentalStyle default
    ef8. af,16 ~ 4  r8 ef'  d [ c ] | d8. g,16 ~ 4  r8 g  bf [ c ] | 
    d8 ef  d16 ef8 d16  ~  4  bf8 fs16 | a8 g16 a ~  8 g16 a ~   8 g  bf c |

    ef8. af,16 ~ 4  r8 ef'  d [ c ] | d8. g,16 ~ 4  r8 g  bf c | 
    d8 ef  d16 ef8 d16 ~ 4  bf8 fs | g8 a16 bf ~  8 c16 d ~   8 bf  g d |

     fs8. a16 ~  8 g  r bf g [ d ] | fs8. a16 ~  8 g  r4  g8 d |
    \tuplet 3/2 4 { ef8 f g  a bf c ~ }  16 a8.  bf8 c | d4 4 4 
}

bgVocalSecondEnding = \relative c'' { 
    R1 ||
}

melodyBridge = \relative c'' { 
    a4. 8 ~ 2 ~ | 2 \tuplet 3/2 { a4 bf b } |
    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { c4 cs d } |
    ef4. 8 ~ 2 ~ | 2 \tuplet 3/2 { ef4 d df } |
    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { c4 b bf } |
    a1 | gs |
}

melodyDs = \relative c'' { 
    R1*3 | r2 r8 g bf [ c ]
}


hornsBridge = \relative c''' { 
    af2\rest  bf8\rest d,16 16   16 8 a'16  | bf16\rest a8 g16  d2. | 
    af'2\rest  bf8\rest f16 16   16 8 c'16  | bf16\rest bf c8 ~ 2. | 
    af2\rest  bf8\rest af16 16   16 8 ef'16  | ef16\rest ef8 df16  af2. | 
    af2\rest  bf8\rest c  g' [ f ]  | c2 ~  8. b16 ~ 8 bf | 
    a4. 8  f' d  bf a | gs4 e' cs2 |  
}


bassBridge = \relative c { 
    g8. g'16  a,8 a'  g16 a bf8  d,8 f |
    g,8. g'16  a,8 a'  a16 16 g a  bf8 d, | 

    bf4  4  8 bf'  af bf | bf,4  8 f'  bf8. b16 ~  8 c |

    df,8. df'16  ef df af8  df16 16 8  cf, df |       
    df8. df'16  ef8 af,  df8. c16 ~  8 b |

    bf,8. bf'16  af,8 bf8  8 bf'  f, af | 
    bf8. bf'16  af,8 bf8  8. a16 ~  8 af | 

    g1 | fs2. f'4 \glissando ||
           
    g,8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. f'16 ~  8 c  r f, ~  16 fs8. |
    g8. g'16 ~  8  d  r8 g, ~  16 gf8. | f8. fs'16 ~  8 g  r2 ||
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

