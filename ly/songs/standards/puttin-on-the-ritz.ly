\version "2.24.0"

titleLeft = "Puttin' On"
titleRight = "The Ritz"
titleFull = "Puttin' On The Ritz"
composerName = "I. Berlin"
lyricistName = "I. Berlin"
arranger = ""
copyright = ""

%{

killPreview ; rm puttin-on-the-ritz*pdf ; lilypond ly/songs/standards/puttin-on-the-ritz*.ly ; for file in puttin-on-the-ritz*pdf ; do open -a Preview $file ; done

killPreview
rm puttin-on-the-ritz*pdf
lilypond ly/songs/standards/puttin-on-the-ritz*.ly
mv puttin-on-the-ritz*.pdf pdf/songs/standards
for file in pdf/songs/standards/puttin-on-the-ritz*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

structurePiano = \relative c' { 
    \time 4/4
    \key f \minor
    \tempo "Moderato"
    s1*8 

    \key f \major 
    \startRepeat
    s1*2
    \endRepeat
}


structure = \relative c' { 
    \startSection "Verse"
    \key f \major
    s1*16

    \time 2/2 
    \key f \minor
    \startSection "Chorus"
    \repeat volta 2 { 
        \startRepeat
        s1*7
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "Bridge"
    s1*8

    \startSection "Chorus"
    s1*5 s2... <>\toCoda s16 s1*2
    \endBar
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . 0 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key f \minor
    s1*2
    \endBar
}


rehearsalMarkTweaksForPiano = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . -1 )
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    \once \override Score.RehearsalMark.extra-offset = #'( 1 . 1 )
    % "Verse"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Chorus"
    s1*4 \break 
    s1*5 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Bridge"
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Chorus"
    s1*4 \break 
    s1*4 \break 
}

rehearsalMarkTweaksForBb = { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    \once \override Score.RehearsalMark.extra-offset = #'( 1 . 1 )
    % "Verse"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Chorus"
    s1*4 \break 
    s1*5 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Bridge"
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Chorus"
    s1*4 \break 
    s1*4 \break 
}
rehearsalMarkTweaksForEb = { \rehearsalMarkTweaksForBb }


chordsPiano = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f1:m | s | s | s | 
    c:7.9- | s | f4:m6 bf2.:6 | f1 ||
    f2.:6 af4:dim7 | g2:m13/c c:7 || 
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f2:6 af:dim7 | g:m11 c:7 | f:6 af:dim7 | g:m7 ef:7 |  
    af2:6 b:dim7 | bf:m11 ef:7 | af:6 b:dim7 | ef/bf ef:7 | 
    c2/g cs:dim | d:m6 g:7 | c cs:dim | d:m7 g:7 | 
    a1:m7 | d:7 | g:7 | c4:7 ef:7/c af/c c:7   ||

    f1:m | s | s | s | 
    c1:7.9- | s | f2:m f:m/ef | df:9 c:7 || df:9 c:m6 ||

    bf1:m7.13- | s | ef:9 | g2/ef ef:7 | 
    af1:6 | bf2:m7 ef:7 | af1 | df2:m6 c:7 ||

    f1:m | s | s | s | 
    c1:7.9- | s | f2:m af:m6 | c:7 c:aug7 ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:m bf:6 | f1 ||
}

pianoIntroTop = \relative c' { 
    <f c af>4 <af f c> <c af f> <c, af>8 <f c af> ~ | 
    <f c af>8 <af f c> <c af f>4 <c, af> <f c af> | 
    <af f c>4 <c af f> <c, af>8 <f c af>4 <af f c>8 | 
    <c af f>4 c,_> e_> g_> | 
    << 
        \relative c'' { bf1^> ~ | 2 } \\
        \relative c'' { r4 <g e df> <g e df> <g e c> | r <g e c> }
    >> <c e,>8 <bf df,> <af c,> <g bf,> | 
    <f c af>4 << 
        \relative c '' { g8 bf d bf d4 } \\
        \relative c' { <f d>4 4 4 }
    >> |
    <f' c a f>2 <f a c f>4^> r ||

    <c, a>4 <d c a> <f c> <d b> | <f bf,>8 <e bf>4 <g e bf>8 ~ 2 ||
}
pianoIntroBottom = \relative c {
    <c f,>4 r <c c,> r | 
    <c f,>4 r <c c,> r | 
    <c f,>4 r <c c,> r | 
    <c f,>4 <c c,>_> <e e,>_> <g g,>_> | 
    <bf bf,>4 r <c, c,> r | 
    <g' g,>4 r <c, c,> r |
    <c f>4 <g' f bf,>4 4 4 | 
    <a c, f,>2 <f, f,>4^> r ||

    <c' f,>4 r <f a,> <f af,> | <c g> r r <c c,> || 
}

melodyIntro = \relative c' { 
    f4 af c c,8 f ~ | 8 af c4 c, f | af c c,8 f4 af8 | c4 c, e g | 
    bf1 | r2 c8 bf af g | f4 g8 bf d bf d4 | f,2 f'4 r4 ||
    c,4 d f d | f8 e4 g8 ~ 2 ||
}

melodyVerse = \relative c' { 
    c4 d f d | f8 e4 g8 ~ 2 | c,4 d f d | f8 e4 g8 ~ 2 |
    ef4 f af f | af8 g4 bf8 ~ 2 | ef,4 f af f | af8 g4 bf8 ~ 2 |
    c2 g4. e8 | g4 f e8 d4. | c'2 g4. e8 | g4 f e8 d4. |
    a'4 4 e4 4 | a1 | b4 4 8 a g4 | c1 || 
}
melodyChorus = \relative c' { 
    f4 af c c,8 f ~ | 8 af c4 c, f | af c c,8 f4 af8 | c4 c, e g | 
    bf1 | r2 c8 bf af g | f1 | R1 ||
}
melodyB = \relative c'' { 
    bf4 c df ef | f ef df c | bf4 r8 bf ~ 2 | R1 | 
    af4 bf c df | ef df c bf | af4 r8 af ~ 2 | af8 4 8 ~ 4 g4 | 
}
melodyForm = \relative c' { 
    \melodyVerse
    \melodyChorus R1 
    \melodyB
    \melodyChorus
}

melodyCoda = \relative c' { 
    f4 g8 bf d bf d4 | f,2 f'4 r4 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Have you seen the well to do
    Up on Le -- nox A -- ven -- ue
    On that fa -- mous thor -- ough -- fare
    With their no -- ses in the air?

    High hats and nar -- row col -- lars
    White spats and fif -- teen dol -- lars
    Spend -- ing eve -- ry dime
    For a won -- der -- ful time

    If you're blue, and you don't know where to go to
    Why don't you go where Har -- lem flits?
    Put -- tin' on the Ritz


    That's where each and eve -- ry lu -- lu- -- belle goes
    Eve -- ry Thurs -- day eve -- ning with her swell beaus
    Rub -- bin' el -- bows

    Come with me and we'll at -- tend their ju -- bi -- lee
    And see them spend their last two bits
    Put -- tin' on the Ritz
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 53 { \skip 1 }

    Span -- gled gowns u -- pon the be -- vy of high browns
    From down the lev -- ee, all mis -- fits
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
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \new StaffGroup <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsPiano
            }
            \new GrandStaff <<
                \new Staff = "voice" { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \new Voice = "top" <<
                        \structurePiano
                        \rehearsalMarkTweaksForPiano
                        \pianoIntroTop
                    >>
                }
                \new Staff = "voice" { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \new Voice = "top" <<
                        \clef bass
                        \structurePiano
                        \rehearsalMarkTweaksForPiano
                        \pianoIntroBottom
                    >>
                }
            >>
        >>
        \layout {
            indent = 1.25\cm
            short-indent = 0.25\cm
        }    
    }

    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
        \layout {
            indent = 0\cm
            short-indent = 0\cm
        }    
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout {
            indent = 4\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }

    \score {
        \new StaffGroup \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsPiano
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "top" <<
                    \structurePiano
                    \rehearsalMarkTweaksForPiano
                    \melodyIntro
                >>
            }
        >>
        \layout {
            indent = 1.25\cm
            short-indent = 0.25\cm
        }    
    }

    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
        \layout {
            indent = 0\cm
            short-indent = 0\cm
        }    
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout {
            indent = 4\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}


\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }

    \score {
        \new StaffGroup \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsPiano
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "top" <<
                    \structurePiano
                    \rehearsalMarkTweaksForPiano
                    \melodyIntro
                >>
            }
        >>
        \layout {
            indent = 1.25\cm
            short-indent = 0.25\cm
        }    
    }

    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
        \layout {
            indent = 0\cm
            short-indent = 0\cm
        }    
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature.stencil = ##f
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout {
            indent = 4\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}


