\version "2.24.0"

titleLeft = "Razr"
titleRight = "Ringtone"
titleFull = "Razr Ringtone"
composerName = "Motorola"
arranger = ""
copyright = ""

%{

killPreview ; rm razr-ringtone*pdf ; lilypond ly/songs/pop/razr-ringtone.ly ; for file in razr-ringtone*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/razr-ringtone*
lilypond ly/songs/pop/razr-ringtone.ly 
mv razr-ringtone*pdf pdf/songs/pop
for file in pdf/songs/pop/razr-ringtone*pdf ; do op $file ; done 

git add . ; git commit -m"enharmonics" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #1

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t
  ragged-right = ##f

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)


    \tempo 4=152
	\key c \major
	\time 4/4
    \startRepeat
    s1*3
    \sixFour
    s1.
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -4 . -1 )
}


chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    e1:m7 | fs:m7 | 
    g1:maj7 | a1.:m7 ||
}


melody = \relative c' {
    r4 e8 g b d ~ 4 | fs,8 a cs e ~ 4 r | 
    r4 g,8 b d fs ~ 4 | a,8 c e g ~ 2 r || 
}

harmony = \relative c' {
    <g b>2. <a cs>4 ~ | 2. r4 | 
    <b d>2. <c e>4 ~ | 1 r2 | 
}

\header {
    title = \title
    composer = \composerName
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \harmony
                >>
            }
        >>
    }
}

