\version "2.24.0"

titleLeft = "Puttin' On"
titleRight = "The Ritz"
titleFull = "Puttin' On The Ritz"
composerName = "I. Berlin"
lyricistName = "I. Berlin"
arranger = ""
copyright = ""

%{

killPreview ; rm puttin-on-the-ritz*pdf ; lilypond ly/songs/standards/puttin-on-the-ritz*.ly ; mv puttin-on-the-ritz*.pdf pdf/songs/standards ; for file in pdf/songs/standards/puttin-on-the-ritz*pdf ; do open -a Preview $file ; done

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
  markup-system-spacing.padding = #0

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
    \time 4/4
    \key g \major
    \startSection "Intro"
    s1*16

    \key g \minor
    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*8
    }

    \startSection "B"
    \endRepeat
    s1*8

    \startSection "A"
    s1*8
    \endBar
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Intro"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4 \break 
    s1*4 \break 
}

rehearsalMarkTweaksForBb = { \rehearsalMarkTweaksForC }
rehearsalMarkTweaksForEb = { \rehearsalMarkTweaksForC }


chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g2/b bf:dim7 | a:m7 d:7 | g/b bf:dim7 | a:m7 d:7 |  
    bf2/d cs:dim7 | f/c f:7 | bf/d cs:dim7 | f/c f:7 | 
    d2:6 ds:dim7 | e:m7 a:7 | d:6 ds:dim7 | e:m7 a:7 | 
    b1:m7 | e:7 | a:7 | d:7 ||

    g1:m | s | s | s | 
    d1:7 | s | g2:m g:m/f | ef:9 d:7 ||

    c1 | s | c:m7 | f:7 | 
    bf2:6 g:m7 | c:m7 f:7 | bf1 | ef2:7 d:7 ||

    g1:m | s | s | s | 
    d1:7 | s | g1:m | s2 d2:7 ||
}

melodyIntro = \relative c' { 
    d4 e g e | g8 fs4 a8 ~ 2 | d,4 e g e | g8 fs4 a8 ~ 2 |
    f4 g bf g | bf8 a4 c8 ~ 2 | f,4 g bf g | bf8 a4 c8 ~ 2 |
    d2 a4. fs8 | a4 g fs8 e4. | d'2 a4. fs8 | a4 g fs8 e4. |
    b'4 4 fs4 4 | b1 | cs4 4 8 b a4 | d1 || 
}
melodyA = \relative c'' { 
    g4 bf d d,8 g ~ | 8 bf d4 d, g | bf d d,8 g4 bf8 | d4 d, fs a | 
    c1 | r2 d8 c bf a | g1 | R1 ||
}
melodyB = \relative c'' { 
    c4 d ef f | g f ef d | c4. 8 ~ 2 | R1 | 
    bf4 c d ef | f ef d c | bf4. 8 ~ 2 | bf8 4 8 ~ 8 a4. | 
}
melodyForm = \relative c' { 
    \melodyIntro
    \melodyA
    \melodyB
    \melodyA
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
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
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
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melodyForm
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForm
                >>
            }
        >>
    }
}
