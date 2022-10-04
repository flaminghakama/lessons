\version "2.19.81"

titleLeft = "Ain't"
titleRight = "Misbehavin'"
title = "Ain't Misbehavin'"
composerName = "T. 'Fats' Waller & H. Brooks"
lyricistName = "A. Razaf"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm aint*pdf
lilypond ly/songs/standards/aint*.ly
mv aint*.pdf pdf/songs/standards
for file in pdf/songs/standards/aint*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fixing key signature" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

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

strcture = \relative c' { 
    \key ef \major
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef2 e:dim7 | f:m7 fs:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | g:7 c:7 | f:7 bf:7 | 

    ef2 e:dim7 | f:m7 fs:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | ef:7 af | ef d4:7.9- g:7  | 

    c1:m | af:7/c | f:7/c | c:7 | 
    f1:6 | c2:m7 f:9 | g:7.9+ c:7 | f:7 bf:7 | 

    ef2 e:dim7 | f:m7 fs:dim7 | ef/g g:aug7 | af:6 df:9 | 
    ef2/g c:7 | f:m7 bf:9 | af1:9 | ef:6.9 |
}

melody = \relative c' { 
    r8 ef f [ef] bf'8 4. | r8 f g [f] c'2 | 
    r8 bf c [bf] ef8 4 d8 | f ef c g ~ 8 gf f4 | 
    r8 ef f [ef] bf'8 4. | r8 f g [f] c'8 4 bf8 |
    g1 ~ | 2. r4 |  

    r8 ef f [ef] bf'8 4. | r8 f g [f] c'2 | 
    r8 bf c [bf] ef8 4 d8 | f ef c g ~ 8 gf f4 | 
    r8 ef f [ef] bf'8 4. | r8 f g [f] c'8 4 bf8 |
    ef,1 ~ | 2. r4 |  

    r4 ef'8 c ef c4. | r4 ef8 c ef c4. | 
    r4 ef8 c ef c4. | r4 e8 c e c4. | 
    r4 f f f | f ef d c | 
    bf2 c | g f | 

    r8 ef f [ef] bf'8 4. | r8 f g [f] c'2 | 
    r8 bf c [bf] ef8 4 d8 | f ef c g ~ 8 gf f4 | 
    r8 ef f [ef] bf'8 4. | r8 f g [f] c'8 4 bf8 |
    ef1 ~ | 2. r4 |  
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    No one to talk with, all by my -- self, 
    no one to walk with, but I'm hap -- py on the shelf, 
    Ain't Mis -- be -- hav -- in' 
    I'm sav -- in my love for you

    I know for cer -- tain the one I love,
    I'm through with flirt -- in' it's just you I'm think -- in' of.
    Ain't Mis -- be -- hav -- in' 
    I'm sav -- in my love for you

    Like Jack Hor -- ner in the cor -- ner,
    don't go no -- where, what do I care.
    Your kiss -- es are worth wait -- in' for, 
    be -- lieve  me.

    I don't stay out late, don't care to go.
    I'm home a -- bout eight, just me and my ra -- di -- o, 
    Ain't Mis -- be -- hav -- in' 
    I'm sav -- in my love for you
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-C" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm 
                            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(original key)"
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
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(original key)"
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
                    \strcture
                    \melody
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "in-Bb-for-C" 
    \header {
        subtitle = "(Tender Tim key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef bf, <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm 
                            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        subtitle = "(Tender Tim key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef bf <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        subtitle = "(Tender Tim key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef bf, <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}
