\version "2.19.83"

titleLeft = "I Should"
titleRight = "Care"
title = "I Should Care"
composerName = "S. Cahn"
lyricistName = "A. Stordahl & P. Weston"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"


%{

https://www.youtube.com/watch?v=yZNo_cpsZIc

killPreview
rm i-should-care*.pdf
lilypond ly/songs/standards/i-should-care.ly 
mv i-should-care*.pdf pdf/songs/standards
for file in pdf/songs/standards/i-should-care*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureIntro = \relative c' { 
    \key c \major
    \time 4/4
    \tempo "Molto moderato e con espressione"
    s1*3
    \tempo \ritMarkup
    s1
    \override BreathingSign.text = \markup { \musicglyph "scripts.caesura.straight" }
    \breathe 
    \bar "||" 
    \break
    s1*6 
    \pageBreak
}
structureForm = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \set Score.repeatCommands = #'(start-repeat)
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 

    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar ":|]"
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:maj7 d:m9 | a1:m9 | d:9.11+ | g2.:7 g4:aug7 ||
    c2 a:m7 | d:m7 g:13 | a:m g:13 | c:maj7 c:m/ef | 
    d2.:9.11+ d4:aug9 | g:9 e:m b:7 g:7 ||  
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | e:m7 a:7 | d:m7 g:7 | c1:maj7 | 
    e1:m7.5- | a:aug7 | d:m9 | d2:m7.5- d:m7.5-/af |
    a1:m7.13- | b2:m7 e:7 | g:m7 c:7 | f1:maj7 |
    b2:m7.5- e:7.9- | a1:m | d:9 | af2:m7 df:7 || 

    fs2:m7.5- b:7.9- | e:m7 a:7 | d:m7 g:7 | c1:maj7 | 
    e1:m7.5- | a:aug7 | d:m9 | d2:m7.5- d:m7.5-/af |
    a1:1.3-.5.13- | d2:m9 e:7.9- | a:m7.7+ a:m7/g | d:7/fs f:m6 | 
    c2/e ef:dim7 | d:m7 g:7 | c:6 f:7 | e:m7 a:7 || 
}

melodyIntro = \relative c'' { 
    << 
        \relative c' { 
            \tuplet 3/2 2 { <e c>4 ( <f d> <e c>  <f d> <g e> <f d> | a b a <c a> <d b> <c a> } |
            <e c>2.-> <c e,>4 | \fermata g1 ) 
        } \\
        \relative c' { 
            a2 2 | <e' c> ( e ) | r8 a, ( gs [ a ] e'4 a, ) |
            <c a>4 <cs as> <d b> <ds b>
        }
    >>

    \stemNeutral
    g8 8 8 8 c8 8 4 | d,8 8 8 8  g8 8 4 | 
    c,8 8 8 8 e4 d | g1 | 
    gs8 8 8 8 a4 as | b1 ||
} 
melodyForm = \relative c'' { 
    \override Voice.Rest #'staff-position = #0
    c2. b4 | 1 | r4 a8 b \tuplet 3/2 { c4 b a } | b4 2. |
    bf2. e,4 | a1 | r4 e8 f \tuplet 3/2 { g4 d e } | f4 2. |
    \tuplet 3/2 { e4 f e } f4 e4 | 4 2. | \tuplet 3/2 { e4 f e } g4 f | e1 | 
    \tuplet 3/2 { d4 e d } f4 e4 | c4 2. | \tuplet 3/2 { d4 e c } d4 e | 
            \tuplet 3/2 { bf'4 cf af } bf!4 cf! 
    c2. b4 | 1 | r4 a8 b \tuplet 3/2 { c4 b a } | b4 2. |
    bf2. e,4 | a1 | r4 e8 f \tuplet 3/2 { g4 d e } | f4 2. |
    \tuplet 3/2 { e4 f e } f4 e4 | g4 f2 e4 | b'4 gs2 a4 | d2. df4 | 
    c2. a4 | b2. a8 b | c1 | R1 ||
}

originalMelody = \relative c' { 
    s1*15 
    \omit TupletNumber
    \omit TupletBracket
    \tuplet 3/2 { a4 b g } a4 b
}

melodySong = \relative c'' { 
    \melodyIntro
    \melodyForm
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    I know I should pi -- ty me,
    But I don't be -- cause, you see,
    I have loved and I have learned
    And as far as I'm con -- cerned;
}

lyricsIntroSkip = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


    I should care,
    I should go a -- round weep -- ing,
    I should care
    I should go with -- out sleep -- ing;

    Strange -- ly e -- nough I sleep well
    'cept for a dream or two,
    But, then, I count my sheep well,
    Fun -- ny how sheep can lull you to sleep.

    So, I should care
    I should let it up -- set me,
    I should care,
    But it just does -- n't get me;

    May -- be I won't find some -- one 
    as love -- ly as you,
    But I should care and I do


}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.0
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \voiceOne
                        {
                            \structureIntro
                            \structureForm
                        }
                        {
                            \melodyIntro 
                            \melodyForm
                        }
                    >>
                    \new Voice = "original" \voiceTwo \originalMelody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
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
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.0
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \voiceOne
                        {
                            \structureIntro
                            \structureForm
                        }
                        {
                            \melodyIntro 
                            \melodyForm
                        }
                    >>
                    \new Voice = "original" \voiceTwo \originalMelody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
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
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.0
                \chordsIntro
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \voiceOne
                        {
                            \structureIntro
                            \structureForm
                        }
                        {
                            \melodyIntro 
                            \melodyForm
                        }
                    >>
                    \new Voice = "original" \voiceTwo \originalMelody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntroSkip
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

