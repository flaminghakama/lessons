\version "2.24.0"

titleLeft = "My One And"
titleRight = "Only Love"
titleFull = "My One And Only Love"
composerName = "G. Wood"
lyricistName = "R. Mellin"
arranger = ""
copyright = ""

%{

killPreview ; rm my-one-and-only-love*pdf ; lilypond ly/songs/standards/my-one-and-only-love.ly ; for file in my-one-and-only-love*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/my-one-and-only-love*
lilypond ly/songs/standards/my-one-and-only-love.ly 
mv my-one-and-only-love*pdf pdf/songs/standards
for file in pdf/songs/standards/my-one-and-only-love*pdf ; do op $file ; done 

git add . ; git commit -m"chord tweaks" ; git push 
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

toCoda = <>^\markup { \translate #'( 0 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structure = \relative c' { 
    \key c \major

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
    s1*6 | s2... \toCoda s16 | s1
    \bar "|."
}

rehearsalMarkTweaksForC = {

    % \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*6 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*8 
    % \pageBreak 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
}
rehearsalMarkTweaksForBb = {

    % \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*6 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
 }

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key c \major
    s1
    \bar "|."    
}

chordsReal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    c4:maj7 c:/b a:m7 a:m/g | d2:7/fs g:7/f | 
    c2/e f:maj7 | g2:7 e4:m7 a:7 | 

    d2:m7 g4:7 e:7/gs | a2:m7 d:7 | 
    d2:m7 g:7 | e4:m7 a:7 d:m7 g:7 ||  
        d2:m7 g:7 | c2:6 fs4:m7.5- b:7 || 

    e1:m | fs2:m7 b:7 | 
    e1:m | fs2:m7 b:7 | 

    e2:m e:m/ds | e:m/d e:m/cs | 
    d2:m7 af:7 | d:m7 g:7 ||

    c4:maj7 c:/b a:m7 a:m/g | d2:7/fs g:7/f | 
    c2/e f:maj7 | g2:7 e4:m7 a:7 | 

    d2:m7 g4:7 e:7/gs | a2:m7 d:7 | 
    d2:m7 g:7.9- | c:6 d4:m7 g:7 ||  
}
chordsColorado = \transpose f c \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    f2:maj7 d:m7 | g:m7 c4:7 cs:dim7 |  
    d2:m7 bf:maj7 | b4:m7.5- e:7 a4:m7 d:7.9- | 

    g2:m7 e4:m7.5- a:7.9+ | d2:m7 g:7.11+ | 
    g2:m7 c:7 | a4:m7 d:7 g:m7 c:7 ||  
        g2:m7 c:7 | f2 b4:m7.5- e:7.9- || 

    a2:m7 fs:m7.5- | b2:m7.5- e:7.9- | 
    a2:m7 fs:m7.5- | b2:m7.5- e:7.9- | 

    a2:m a:m7.7+ | a:m7 d:9 | 
    g2:m7 af:maj7 | df:7.11+ c:7.9- ||

    f2:maj7 d:m7 | g:m7 c4:7 cs:dim7 |  
    d2:m7 bf:maj7 | b4:m7.5- e:7 a4:m7 d:7.9- | 

    g2:m7 e4:m7.5- a:7.9+ | d2:m7 g:7.11+ | 
    g2:m7 c:7.9- | f1 ||  
}
chordsFake = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    c2 a:m7 | d:m7 g4:9 gs:dim7 | 
    a:m a:m/g f2:maj7 | b2:m7.5- e4:7.9- a:7.9- | 

    d4:m d:m/c b:m7.5- e:7 | a2:m7 ef:9 | 
    d2:m7 g4:7 g:7/f | e:m7 a:7.9- d:m7 g:9 ||  
        d2:m7 g4:7 g:7/f | c2 fs4:m7.5- b:7 || 

    e2:m6 cs:m7.5- | fs:m7 b:7 | 
    e2:m6 cs:m7.5- | fs:m7 b:7 | 

    e2:m e:m/ds | e:m/d e:m/cs | 
    d2:m7 af:7.11+ | d:m7 g:7.9- ||

    c2 a:m7 | d:m7 g4:9 gs:dim7 | 
    a:m a:m/g f2:maj7 | b2:m7.5- e4:7.9- a:7.9- | 

    d4:m c:m7 b:m7.5- e:7 | a2:m7 ef:9 | 
    a2:m7 g4:aug7 df:9 | c2 d4:m7 g:7 || 
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    c2:maj7 a:m7 | d:m7 g4:9 gs:dim7 | 
    a2:m7 f:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:7 g:7/f | e:m7 a:7.9- d:m7 g:9 ||  
        d2:m7 g4:7 g:7/f | c2 fs4:m7.5- b:7 || 

    e1:m6 | fs2:m7.5- b:7 | 
    e1:m6 | fs2:m7.5- b:7 | 

    e2:m e:m/ds | e:m/d e:m/cs | 
    d2:m7 af:7.11+ | d:m7 g:7.9- ||

    c2:maj7 a:m7 | d:m7 g4:9 gs:dim7 | 
    a2:m7 f2:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:aug7 df:9 | c2 d4:m7 g:7 || 
}
chordsFormFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2:maj7 a:m7 | d:m7 g4:9 gs:dim7 | 
    a2:m7 f:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:7 g:7/f | e:m7 a:7.9- d:m7 g:9 ||  
        d2:m7 g4:7 g:7/f | c2 fs4:m7.5- b:7 || 

    e1:m6 | fs2:m7.5- b:7 | 
    e1:m6 | fs2:m7.5- b:7 | 

    e2:m e:m/ds | e:m/d e:m/cs | 
    d2:m7 gs:7.11+ | d:m7 g:7.9- ||

    c2:maj7 a:m7 | d:m7 g4:9 gs:dim7 | 
    a2:m7 f:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:aug7 cs:9 | c2 d4:m7 g:7 || 
}
chordsFormSharps = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    c2:maj7 a:m7 | d:m7 g4:9 af:dim7 | 
    a2:m f:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:7 g:7/f | e:m7 a:7.9- d:m7 g:9 ||  
        d2:m7 g4:7 g:7/f | c2 gf4:m7.5- cf:7 || 

    ff1:m6 | gf2:m7.5- cf:7 | 
    ff1:m6 | gf2:m7.5- cf:7 | 

    ff2:m ff:m/ef | ff:m/d ff:m/df | 
    d2:m7 af:7.11+ | d:m7 g:7.9- ||

    c2:maj7 a:m7 | d:m7 g4:9 af:dim7 | 
    a2:m f:maj7 | b2:m7.5- e4:7.9+ a:7.9- | 

    d2:m b4:m7.5- e:7.9+ | a2:m7 ef:9 | 
    d2:m7 g4:aug7 df:9 | c2 d4:m7 g:7 || 
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    af4:maj7 df:maj7 df:6 c:6.9
}
chordsCodaFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    gs4:maj7 cs:maj7 cs:6 c:6.9
}

melodyACommon = \relative c' { 
    r8 g a8. c16 d8 e b' g | a4 d b ~ \tuplet 3/2 { b8 g f } | 
    e4 c' a ~ \tuplet 3/2 { a8 f e } | d4 b' g2 | 

    r8 a g [ f ]  e8. d16 g8. e16 | c8 a2.. | 
}
melodyAFirstEndings = \relative c' { 
    r8 f g [ a ]  g4 d | g1 ||  r8 f g [ a ]  g4 e | c2. 
}
melodyB = \relative c' { 
    r8 b ||
    b'4 ~ \tuplet 3/2 { b8 a g } b4 ~ \tuplet 3/2 { b8 a g } | b,8 b4. ~ 4 r8 b | 
    b'4 ~ \tuplet 3/2 { b8 a g } b4 ~ \tuplet 3/2 { b8 a g } | b,2. r8 b | 
    e4 ~ \tuplet 3/2 { e8 fs g } e4. b8 | e4 ~ \tuplet 3/2 { e8 fs g } e2 |
    \tuplet 3/2 2 { d4 d d f? d f } | d1 ||  
}
melodyAThirdEnding = \relative c' { 
    r8 f g [ f ]  af4 b | c2. r4 ||
}
melodyCoda = \relative c'' { 
    c1 ||
}

melody = {
    \melodyACommon
    \melodyAFirstEndings
    \melodyB
    \melodyACommon
    \melodyAThirdEnding
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    The ver -- y thought of you makes my heart sing  
    like an A -- pril breeze on the wings of spring.

    And you ap -- pear in all your splen -- dor, 
    My One And On -- ly Love. 
    My One And On -- ly Love. 

    The touch of your hand is like heav -- en, 
    a heav -- en that I've ne -- ver known.

    The blush on your cheek when -- ev -- er I speak 
    tells me that you are my own.

    You fill my ea -- ger heart with such de -- sire, 
    Ev -- r'y kiss you give sets my soul on fire.

    I give my -- self in sweet sur -- ren -- der, 
    My One And On -- ly Love. 
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    The shad -- ows fall and spread their mys -- tic charms 
    in the hush of night while you're in my arms. 

    I feel you lips so warm and ten -- der, 
}
lyricsCoda = \lyricmode {
    Love.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-C-for-C" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsColorado
            % }
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsReal 
            % }
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsFake
            % }
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

    \score {
        <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
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
            indent = 3.15\cm
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
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(original key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
        >>
    }

    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
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
            indent = 3.15\cm
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
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        subtitle = "(original key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFormSharps
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
        >>
    }

    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
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
            indent = 3.15\cm
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
  \bookOutputSuffix "in-Eb-for-C" 
    \header {
        subtitle = "(Elaine key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose c ef <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsColorado
            % }
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsReal 
            % }
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
            %     \chordsFake
            % }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsFormFlats
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

    \score {
        \transpose c ef <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCodaFlats
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
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
            indent = 3.15\cm
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
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c \transpose c ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
        >>
    }
    \score {
        \transpose bf, c \transpose c ef <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
        >>
        \layout { 
            indent = 3.15\cm
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
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef, c \transpose c ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
        >>
    }
    \score {
        \transpose ef, c \transpose c ef <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}
