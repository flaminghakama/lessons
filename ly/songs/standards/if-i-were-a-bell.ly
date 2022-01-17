\version "2.19.83"

titleLeft = "If I Were"
titleRight = "A Bell"
title = "If I Were A Bell"
composerName = "F. Loesser"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

killPreview
rm if-i-were-a-bell*.pdf
lilypond ly/songs/standards/if-i-were-a-bell.ly 
mv if-i-were-a-bell*.pdf pdf/songs/standards
for file in pdf/songs/standards/if-i-were-a-bell*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #16

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
%                          "Blue Highway Bold"

\include "ly/ily/layout-songs.ily"

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureForm = \relative c' { 
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -1.4 ) 
    \key f \major
    \partial 2*1 s2
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    g1:7 | g2:m7 c:7 | f1:maj7 | s | 
    a1:m7.5- | d:7.9- | g:7 | g2:m7 c:7 | 
    f1:7 | bf:7 | f:7 | a:aug7 | 
    d1:m7 | b2:m7 e:7 | a:maj7 e:7 | a:maj7 d:7 ||

    g1:7 | g2:m7 c:7 | f1:maj7 | s | 
    a1:m7.5- | d:7.9- | g:7 | g2:m7 c:7 | 
    f1:7 | bf2:7 b:dim7 | f e:aug7 | ef:7 d:7 |
    g1:m7 | c:7 | f:maj7 | d:aug7 | 
     
}
chordsFormForFlats = \chordmode { 
}

melodyForm = \relative c'' { 
    a4 4 || 
    a8 f8 8 8 ~ 8 a4 8 | 8 f8 4 a8 f8 4 | a4. c,8 ~ 2 ~ | 2 c'4 4 |
    c8 a8 8 8 ~ 8 c8 8 8 ~ | 8 a8 8 c ~ 8 a8 4 | d4. g,8 ~ 2 | r r8 a4 g8 | 

    f8 8 4 4 8 bf ~ | 2 r8 a4 g8 | f8 8 4 8 8 8 c' ~ | 2 r8 a4 g8 | 
    f8 8 4 4 8 d' ~ | 2 r8 c d [ e ] ~ | 8 cs d e ~ 8 cs d e ~ | 4 r a,4 4 ||

    a8 f8 8 8 ~ 8 a4 8 | 8 f8 4 a8 f8 4 | a4. c,8 ~ 2 ~ | 2 c'4 4 |
    c8 a8 8 8 ~ 8 c8 8 8 ~ | 8 a8 8 c ~ 8 a8 4 | d4. g,8 ~ 2 | r r8 a4 g8 | 
 
    f8 8 4 8 4 bf8 ~ | 2 d8 b d4 | c1 ~ | 2 a4 4 | 
    a8 f8 8 a ~ 8 f8 4 | e'4 c a d, | f1 | R1 || 
}

melodySong = \relative c'' { 
    \melodyForm
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 7 { \skip 1 }    
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Ask me how do I feel
    Ask me now that we're co -- zy and cling -- ing
    Well sir, all I can say is if I were a bell I'd be ring -- ing!

    From the mom -- ent we kissed to -- night
    That's the way I've just got to be -- have
    Boy, if I were a lamp I'd light
    And If I were a ban -- ner I'd wave!

    Ask me how do I feel, lit -- tle me with my qui -- et up -- bring -- ing
    Well sir, all I can say is if I were a gate I'd be swing -- ing!
    And if I were a watch I'd start pop -- ping my springs!
    Or if I were a bell I'd go ding dong, ding dong ding!

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 6 { \skip 1 } 
    from this chem -- is -- try les -- son I'm learn -- ing
    \repeat unfold 11 { \skip 1 } 
    bridge I'd be bur -- ning!

    Yes, I knew my mo -- ral would crack
    From the won -- der -- ful way that you looked!
    \repeat unfold 5 { \skip 1 } 
    duck I'd quack!
    \repeat unfold 5 { \skip 1 } 
    goose I'd be cooked!

    \repeat unfold 6 { \skip 1 } 
    ask me now that we're fond -- ly ca -- ress -- ing
    Well, if I were a sa -- lad I know I'd be splash -- ing my dres -- sing
    Ask me how to des -- cribe this whole beau -- ti -- ful thing
    Well, 
    \repeat unfold 12 { \skip 1 } 
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = "" %\markup \italic { "lyrics by" \lyricistName }
    poet = "    Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                s2 || \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                        \override Beam.damping = #2.75 
                        \override Stem.length-fraction = #(magstep 1.01) 
                        \structureForm
                        \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                s2 || \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                        \override Beam.damping = #2.75 
                        \override Stem.length-fraction = #(magstep 1.01) 
                        \structureForm
                        \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}


\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                s2 || \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                        \override Beam.damping = #2.75 
                        \override Stem.length-fraction = #(magstep 1.01) 
                        \structureForm
                        \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsHeadTwo 
                } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
        }
    }
}

