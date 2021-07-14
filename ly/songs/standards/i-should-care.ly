\version "2.19.83"

titleLeft = "I Should"
titleRight = "Care"
title = "I Should Care"
composerName = "A. Stordahl & P. Weston"
lyricistName = "S. Cahn"

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

\include "ly/ily/layout.ily"

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureIntro = \relative c' { 
    \key c \major
    \time 4/4
    \tempo Swing
}
structureForm = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \set Score.repeatCommands = #'(start-repeat)
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 

    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | e:m7 a:7 | d:m7 g:7 | c1:maj7 | 
    e1:m7.5- | a:7.9- | d:m9 | f2:m7 bf:7 |
    c1:maj7 | b2:m7.5- e:7.9- | g:m7 c:7 | f1:maj7 |
    b2:m7.5- e:7.9- | a1:m | a2:m7 d:9 | af:m7 df:7 || 

    fs2:m7.5- b:7.9- | e:m7 a:7 | d:m7 g:7 | c1:maj7 | 
    e1:m7.5- | a:7.9- | d:m9 | f2:m7 bf:7 |
    c1:maj7 | b2:m7.5- e:7.9- | a:m7.7+ a:m7/g | d:7/fs f:m6 | 
    c2/e ef:dim7 | d:m7 g:7 | c:6 f:7 | e:m7 a:7 || 
}


melodyIntro = \relative c' { 
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
    I know I should pity me
    But I don't because, you see
    I have loved and I have learned
    And as far as I'm concerned
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
                    %\lyricsIntro
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
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsIntro
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
                \new Voice = "lead" <<
                    {
                        \structureIntro
                        \structureForm
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    %\lyricsIntro
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
