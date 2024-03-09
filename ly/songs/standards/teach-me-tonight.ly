\version "2.24.0"

titleLeft = "Teach Me"
titleRight = "Tonight"
titleFull = "Teach Me Tonight"
composerName = "G. de Paul"
lyricistName = "S. Cahn"
arranger = ""
copyright = ""

%{

killPreview ; rm teach-me-tonight*pdf ; lilypond ly/songs/standards/teach-me-tonight.ly ; for file in teach-me-tonight*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/teach-me-tonight*
lilypond ly/songs/standards/teach-me-tonight.ly 
mv teach-me-tonight*pdf pdf/songs/standards
for file in pdf/songs/standards/teach-me-tonight*pdf ; do op $file ; done 

git add . ; git commit -m"fixing wrong notes" ; git push 
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
    s1 
    \startSection "A"
    \repeat volta 2 { 
        s1*5
    }
    \alternative {
        { s1*3 \endRepeat } 
        { s1*3 }
    }
    \startSection "B"
    s1*4 
    s1*4 
    \startSection "A"
    s1*4 
    s1*4 

    \bar "|."
}
structureBette = \relative c' { 
    \key g \major
    s1
    \startSection "A"
    s1*4 
    s1*4 
    \startSection "A"
    s1*4 
    s1*4 
    \startSection "B"
    s1*4 
    s1*4 
    \startSection "A"
    s1*4 
    s1*4 

    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:m7 bf4:7 bf:aug7.9 ||
    ef2:maj7 af:9 | g:m7 c4:7 c:aug7 | f2:m7 bf:7 | g:m7.5- c:7.9- | 
    f1:m7 | bf2:1.4.5.7 bf:7 | ef:maj7 c:7 | f:m7 bf4:7 bf:aug7 || 
        bf2:1.4.5.7 bf:7 | ef1:1.3.5.6.9 | s2 g4:m7 fs:m7 ||

    f2:m7 bf:7 | ef:maj7 c:7.9- | f:m7 bf:7 | ef1:maj7 | 
    a2:m7.5- d:7.9- | g:m7 c:7 | c:m7 f:7 | f:m7 bf4:7 bf:aug7 ||

    ef2:maj7 af:7 | g:m7 c4:7 c:aug7 | f2:m7 bf:7 | g:m7.5- c:7.9- | 
    f1:m7 | bf2:1.4.5.7 bf:7 | ef1:1.3.5.6.9 | f2:m7 bf:7 ||
}
chordsSongBette = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:m7 bf:aug7.9 ||
    ef2:maj7 af:9 | g:m7 c4:7 c:aug7 | f2:m7 bf:7 | g:m7.5- c:7.9- | 
    f1:m7 | bf2:1.4.5.7 bf:7 | ef:maj7 c:7 | f:m7 bf4:7 bf:aug7 || 

    ef2:maj7 af:9 | g:m7 c4:7 c:aug7 | f2:m7 bf:7 | g:m7.5- c:7.9- | 
    f1:m7 | bf2:1.4.5.7 bf:7 | ef1:1.3.5.6.9 | s2 g4:m7 fs:m7 ||

    f2:m7 bf:7 | ef:maj7 c:7.9- | f:m7 bf:7 | ef1:maj7 | 
    a2:m7.5- d:7.9- | g:m7 c:7 | c:m7 f:7 | f:m7 bf4:7 bf:aug7 ||

    ef2:maj7 af:7 | g:m7 c4:7 c:aug7 | f2:m7 bf:7 | g:m7.5- c:7.9- | 
    f1:m7 | bf2:1.4.5.7 bf:7 | ef1:1.3.5.6.9 | f2:m7 bf:7 ||
}

melodyAPickup = \relative c'' { 
    c8 8  8 8 8 8 || 
}
melodyACommon = \relative c'' { 
    c4 bf8 8 ~ 2 | r4 c8 8  8 8 8 8 | 4 bf8 8 ~ 2 | r4 df8 ef  c df bf c | 
    af8 g f2. | 
}
melodyFirstEnding = \relative c'' { 
    bf4 f2 af8 g ~ | 1 |  
    r4 \melodyAPickup
}
melodySecondEnding = \relative c'' { 
    bf4 f2 g8 ef ~ | 1 
}
melodyB = \relative c' { 
    r4 ef f e ||
    ef4 4 c'4. bf8 | g8 4. ~ 4 8 bf | af8 4. d4. c8 | bf2   r8 bf c [ bf ] | 
    a4. 8 ef'4. d8 | bf8 4. ~ 4 r8 bf | d ef d ef c4. d8 | c4 
}

melody = \relative c' { 
    r4 \melodyAPickup
    \melodyACommon
    \melodyFirstEnding
    \melodySecondEnding
    \melodyB
    \melodyAPickup
    \melodyACommon
    \melodySecondEnding
    R1 
}

melodyBette = \relative c'' { 
    r4 \tuplet 3/2 4 { e4 8  4 8  4 8 } ||
    e8 r d8. 16 ~ 2 | r4 \tuplet 3/2 4 { e4 8  4 8 ~ 8 8 d } | 


    e8 r  d8 ~ \tuplet 3/2 { d8 16 ~ } 2 | r4 \tuplet 3/2 4 { f4 g8  e4 f8 } d8 e | 
    \tuplet 3/2 { c8 r b } a4 ~ 4. r8 | d4 a2 b8. d16 ~ | 

    d1 | 

    \transpose g ef \relative c'' {
        r4     c8 8  8 8 8 8 || 



        bf4 f2 g8 ef ~ | 1 

        r4 ef f e ||
        ef4 4 c'4. bf8 | g8 4. ~ 4 8 bf | af8 4. d4. c8 | bf2   r8 bf c [ bf ] | 
        a4. 8 ef'4. d8 | bf8 4. ~ 4 r8 bf | d ef d ef c4. d8 | c4 

        c8 8  8 8 8 8 || 
        c4 bf8 8 ~ 2 | r4 c8 8  8 8 8 8 | 4 bf8 8 ~ 2 | r4 df8 ef  c df bf c | 
        af8 g f2. | 
        bf4 f2 g8 ef ~ | 1 
        R1 
    }
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Did you say I've got a lot to learn?
    Well, don't think, I'm try -- in' not to learn
    Since this is the per -- fect spot to learn
    Teach me to -- night
    Start -- ing  with the A B 

    Teach me to -- night
    The sky's a black board
    High a -- bove you
    If a shoot -- ing star goes by
    I'll use that star to write I love you
    A thou -- sand times a -- cross the sky

    One thing is -- n't ve -- ry clear, my love
    Should the tea -- cher stand so near, my love?
    Grad -- u -- a -- tion's al -- most here, my love
    Teach me to -- night
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 6 { \skip 1 }

    C of it
    Right down to the X Y Z of it
    Help me solve the my -- ste -- ry of it
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(Bette key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef g <<
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
                    \transpose g ef \melodyBette
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

% \book {
%   \bookOutputSuffix "in-Eb-for-C"
%     \header {
%         subtitle = "(real book key)"
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef ef <<
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
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Eb-for-Bb"
%     \header {
%         subtitle = "(Elaine key)"
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose bf, c \transpose ef ef <<
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
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Eb-for-Eb"
%     \header {
%         subtitle = "(real book key)"
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef, c \transpose ef ef <<
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
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

