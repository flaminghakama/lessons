\version "2.24.0"

titleLeft = "Cry Me"
titleRight = "A River"
titleFull = "Cry Me A River"
composerName = "A. Hamilton"
lyricistName = "A. Hamilton"
arranger = ""
copyright = ""

%{

killPreview ; rm cry-me-a-river*pdf ; lilypond ly/songs/standards/cry-me-a-river.ly ; for file in cry-me-a-river*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/cry-me-a-river*
lilypond ly/songs/standards/cry-me-a-river.ly 
mv cry-me-a-river*pdf pdf/songs/standards
for file in pdf/songs/standards/cry-me-a-river*pdf ; do op $file ; done 

git add . ; git commit -m"darlene's edits" ; git push 
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
  system-system-spacing.padding = #1

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##f
  ragged-last = ##f
  ragged-last-bottom = ##f

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \key c \minor
    \time 4/4

    \startSection "A"
    \repeat volta 2 { 
        s1*4
        s1*3 
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8
    \endBar 

}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % \startSection "A"
    s1*3 \break
    s1*3 \break
    s1*2 
    s1 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % \startSection B"
    s1*4 
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % \startSection "A"
    s1*4 
    s1*4 
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
    \set noChordSymbol = \markup { \small "/" }

    c4:m r c:1.3-.5.13- r| c:m6 r c:m7 r | f:m7 r bf:7 bf:aug7 | ef:maj7 r d:m7 g | 
    g4:m7.13- r c:aug7.9-  r | f4:9 r r r | f:m7 r bf:1.4.5.7 r | ef:6 r d:7.9- g:7 ||
        ef4:6 r a:m7.5- d:7.9- ||

    g4:m r r r | c:m6 r d:7 r | g:m r e:m7.5- r | c:m6/ef r d:7.9- r | 
    g4:m r r r | ef:13.11+ r d:1.4.5.7 d:7 | g1:m9 | g:7 ||

    c4:m r c:1.3-.5.13- r| c:m6 r c:m7 r | f:m7 r bf:7 bf:aug7 | ef:maj7 r d:m7 g | 
    g4:m7.13- r c:aug7.9-  r | f4:9 r r r | f:m7 r bf:1.4.5.7 r | ef4:6 r g:aug7 r ||
}

chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = \markup { \small "/" }

    c4:m r c:1.3-.5.13- r| c:m6 r c:m7 r | f:m7 r bf:7 bf:aug7 | ef:maj7 r d:m7 g | 
    g4:m7.13- r c:aug7.9-  r | f4:9 r r r | f:m7 r bf:1.4.5.7 r | ef:6 r eff:7.9- aff:7 ||
        ef4:6 r a:m7.5- d:7.9- ||

    aff4:m r r r | dff:m6 r eff:7 r | aff:m r ff:m7.5- r | dff:m6/ef r eff:7.9- r | 
    aff4:m r r r | ef:13.11+ r eff:1.4.5.7 eff:7 | aff:m9 r r r | aff:7 r r r ||

    c4:m r c:1.3-.5.13- r| c:m6 r c:m7 r | f:m7 r bf:7 bf:aug7 | ef:maj7 r d:m7 g | 
    g4:m7.13- r c:aug7.9-  r | f4:9 r r r | f:m7 r bf:1.4.5.7 r | ef4:6 r g:aug7 r ||
}

chordsSongReal = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    c2:m af/c | c:m6 c:m7 | f:m7 bf:7 | ef2:maj7 d4:m7 g:7 | 
    g2:m7 c:7.9- | c:m7 f:9 | b:9 bf:1.4.5.7 | ef2:6.9 g:aug7 ||
        ef2:6 d:7.9+ ||

    g2:m7 e:m7.5- | ef:7.11+ d:7.9- | g:m e:m7.5- | af:7.9+ d:7.9- | 
    g2:m7 e:m7.5- | ef:7.11+ d:7.9- | g1:maj7 | d2:m11 g4:1.4.5.7 g:7 ||

    c2:m af/c | c:m6 c:m7 | f:m7 bf:7 | ef2:maj7 d4:m7 g:7 | 
    g2:m7 c:7.9- | c:m7 f:9 | b:9 bf:1.4.5.7 | ef2:6.9 g:aug7 ||
}

chordsSongFake = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    c2:m c:aug | c:m6 c:m7 | f:m7 bf4:7 bf:aug7 | ef2:maj7 d4:m7 g:7 | 
    g2:m7 c:aug7 | f1:9 | f2:m7 f:m7/bf | ef2:6 d4:7.9- g:7 ||
        ef2:6 a4:m7.5- d:7.9- ||

    g1:m | c2:m6 d:7 | g:m e:m7.5- | c:m6/ef d:7 | 
    g1:m | c2:m6/ef d4:1.4.5.7 d:7 | g1 | d2:m7 g:7 ||

    c2:m c:aug | c:m6 c:m7 | f:m7 bf4:7 bf:aug7 | ef2:maj7 d4:m7 g:7 | 
    g2:m7 c:aug7 | f1:9 | f2:m7 f:m7/bf | ef2:6 g:aug7.9- ||    
}

chordsSongDiffs = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s1*4
    s1*4
        s1

    s1*8

    s1*4
    s1*4
}


melodyFirstAs = \relative c'' { 
    d2 ~ 8 c g ef | d c4. ~ 4 r | 
    r8 c ef [ c' ]  bf4 c | g2  r8. 16 fs8. g16 | 
    
    c4 ~ \tuplet 3/2 { c8 df c } df8 c4. | r8 g ~ \tuplet 3/2 { g8 f ef } f8 g4. | 
    r8 gf f [ ef ]  f ef c ef | ef2. r4 || ef2. r4 ||
}
melodyBridge = \relative c'' { 
    r8. g16 a8. bf16 ~ \tuplet 3/2 { bf8 d, e } fs8 g | a8. g16 bf8 a ~ 4. g8 | 
    bf4 ~ \tuplet 3/2 { bf8 g d' } c4 bf8 c ~ | 1 |

    r8. g16 a8. bf16 ~ \tuplet 3/2 { bf8 d, e } fs8 g | a8. g16 bf8 a ~ 2 |
    r8 a16 g a8. g16  a8. g16 bf g8. | r8 a16 g a8. g16  a8 g16 b ~ 8. [ \breathe g16 ] || 
}
melodyLastA = \relative c'' { 
    d2 ~ 8 c g ef | d c4. ~ 4 r | 
    r8 c ef [ c' ]  bf4 c | g2  r8. 16 fs8. g16 | 
    
    c4 ~ \tuplet 3/2 { c8 df c } df8 c4. | r8 g ~ \tuplet 3/2 { g8 f ef } f8 g4. | 
    r8 c gf [ ef ]  f ef c ef | ef2. r4 ||
}
melody = \relative c'' { 
    \accidentalStyle default
    \melodyFirstAs
    \melodyBridge
    \melodyLastA
}
melodyForFlats = \relative c'' { 
    \melodyFirstAs
    \transpose gs af \melodyBridge
    \melodyLastA    
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Now you say you're lone -- ly, 
    you cry the long night thru;

    well, you can Cry Me A Riv -- er, 
    Cry Me A Riv -- er,  

    I cried a riv -- er o -- ver you. you. 


        You drove me, near -- ly drove me out of my head, 
        while you nev -- er shed a tear.

        Re -- mem -- ber? I re -- mem -- ber  all that you said;
        told me love was too pel -- be -- ian, 
        told me you were thru with me, an'

    Now you say you love me, 
    well, just to prove you do, 

    come one, an' Cry Me A Riv -- er, 
    Cry Me A Riv -- er,  

    I cried a riv -- er o -- ver you.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Now you say you're sor -- ry 
    for be -- in' so un -- true;

    \repeat unfold 1 { \skip 1 }
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
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(original key)"
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
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        subtitle = "(original key)"
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
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}


\book {
  \bookOutputSuffix "in-B-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c b, <<
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
        >>
    }
}

\book {
  \bookOutputSuffix "in-B-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose c b, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-B-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose c b, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
