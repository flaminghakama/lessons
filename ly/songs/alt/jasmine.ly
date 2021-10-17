\version "2.19.81"

titleLeft = "Jas"
titleRight = "mine"
title = "Jasmine"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm jasmine*pdf
lilypond ly/songs/alt/jasmine.ly
mv jasmine*.pdf  pdf/songs/alt
for file in pdf/songs/alt/jasmine*pdf ; do open -a Preview $file ; done
#mv jasmine*.midi midi

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #22

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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key e \major
    \tempo 4=64
    \time 3/4

    s2.*5 \break
    s2.*3 \break
    s2.*5 \break
    s2.*5 \break

    \startSection ""
    s2.*5 \break
    s2.*3 \break
    s2.*5 \break
    s2.*7 \break
    s2. 
    \bar ""
    \time 6/4 
    s2 
    \bar "!"
    s2 
    \bar "!"
    s2 
    \bar "||"
    \time 3/4
}

chordsHead = \chordmode { \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  fs2.:m9.13 | f:7.11+.13- | e:13.7+ | 2. | 2. |  
  gs2.:m9 / cs 
              | g:7.5+ | 2. |
  gs2.:9.11.13- | 2. | 2. | gs:7.9+ | 2. | 
  b2.:13.8+.9 | 2. | f:7.9+ | f:7.9+ | f:7.9+ | 

  fs:m9.13 f:7.11+.13- | e:13.7+ | 2. | 2. |  
  gs2.:m9 / cs 
              | g:7.5+ | 2. |
  gs2.:9.11.13- | 2. | 2. | e | e | 
  fs:7 | fs:7 | g:7+.11+ | g:7+.11+ | cs:13 | cs:13 | cs:13 | 

  g2.:7+.11+ 
  g2:7+.11+ d:7 a:13.7+.11+  
}

chordsCoda  = \chordmode {  \set chordChanges = ##t 
  cs2.:7sus4.9 | 2. | 2. ||
}

chordsHeadForBb = \chordmode { \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
    fs2.:m9.13 | es:7.11+.13- | e:13.7+ | 2. | 2. |
    gs2.:m9 / cs 
              | fss:7.5+ | 2. |
    gs2.:9.11.13- | 2. | 2. | gs:7.9+ | 2. | 
    b2.:13.8+.9 | 2. | es:7.9+ | 2. | 2. | 

    fs2.:m9.13 es:7.11+.13- | e:13.7+ | 2. | 2. | 
    gs2.:m9 / cs 
              | fss:7.5+ | 2. |
    gs2.:9.11.13- | 2. | 2. | e | 2. | 
    fs2.:7 | 2. | fss:7+.11+ | 2. | cs:13 | 2. | 2. | 

    fss2.:7+.11+ 
    fss2:7+.11+ css:7 gss:13.7+.11+  
}

chordsHeadForEb = \chordmode { \set chordChanges = ##t  \set chordNameExceptions = #flamingChordExceptions 
  ef2.:m9.13 | d:7.5+.11+ | df:13.7+ | 2. | 2. |  
  f:m9 / bf 
              | e:5+ | e:5+ |
  f2.:9.11.13- | 2. | 2. | f:7.9+ | 2. | 
  af2.:13.9- | 2. | d:7.9+ | d:7.9+ | d:7.9+ | 

  ef:m9.13 d:7.5+.11+ | df:13.7+ | 2. | 2. |  
  f2.:m9 / bf 
              | df:5+ | 2. |
  f2.:9.11.13- | 2. | 2. | df | 2. | 
  ef:7 | 2. | e:7+.11+ | 2. | bf:13 | 2. | 2. | 

  e2.:7+.11+ \bar "||" \time 6/4 e2:7+.11+ b:7 fs:13.7+.11+  
}

chordsCodaForEb  = \chordmode {  \set chordChanges = ##t 
  bf2.:7sus4.9
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsHead
}

leadTop = \relative c'' {
    \override Beam.damping = #2 
    \override Stem.length-fraction = #(magstep 1.10)
    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne b8 c4. ~ 4 } \relative c' { <ds cs>2.} >> \oneVoice |
    <b ds, cs>8 r4 <gs ds cs>4. ~ | 2. ~ | 2. | \break
    <as ds, b>4. 4. | <f ds b>2. ~ | 2. \breath | \break 

    r4 r8 \stemUp ds8 

        %\override Stem.length = #10 % this is in half-spaces
        gs [ c ] | ds8 e16 ds  c2 ~ | 2 b4 | 

    R2.*2 | 
    r4 r8 gs4-. b8-. ~ | b gs <c ds, cs>2 | <gs ds>2. ~ | 2. ~ | 2 \breath b4  \bar "||" \break

    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne b8 c4. ~ 4 } \relative c' { <ds cs>2. } >> \oneVoice |
    <b ds, cs>8 r4 << \relative c'' { \voiceOne gs4. ~ | 2. ~ | 2 r8 \stemUp b8 } \relative c' { <ds cs>4.  | 2. ~ | 2. } >> \oneVoice | \pageBreak
    <as ds, b>8 r4  as4 \stemUp b8 | \noBreak \tuplet 3/2 { as8 b as } \tieUp f2 ~ | <f ds b>2. \stemNeutral \breath | \break 

    r2 gs8 c | \tuplet 3/2 { ds8 e ds } \stemDown c2 ~ | 2 b4 | \stemNeutral
    R2.*2 | 

    r2 r8 fs' | \noBreak e cs4. ~ 4 | 
    \tuplet 3/2 { r4 fs8 } \tuplet 3/2 { e8 cs ds } \tuplet 3/2 { e fs cs } | \stemUp c8 b as2 ~ | as2. ~ | as2. ~ | as2. | \breath | \break 

    \stemUp fs4. g8 r8 b \bar "||" 
    \time 6/4 \stemDown e4 ds \bar "!" \stemUp b c \bar "!" \stemUp <fs, ds cs>2*3/4 \toCoda s8 | \bar "||" 
    \bar "||" \time 3/4
} 
harmonyTop = \relative c' {
    s2.*5
    s2.*3
    s2.*5 
    s2.*5

    s2.*5
    s4. 
        \once \override NoteColumn.force-hshift = #-0.04
        <ds b>4. | 
        \once \override NoteColumn.force-hshift = #-0.08
        \extendLV #15
        \override LaissezVibrerTieColumn.tie-configuration = #`((-7 . ,DOWN)(-5 . ,DOWN))  
        2.\laissezVibrer| s2. |
    s2.*5
    s2.*7
    s2. | s1.
} 
harmonyTopForBb = \relative c' {
    s2.*5
    s2.*3
    s2.*5 
    s2.*5

    s2.*5
    s4. 
        \once \override NoteColumn.force-hshift = #-0.04
        <ds b>4. | 
        \once \override NoteColumn.force-hshift = #-0.08
        \extendLV #14.5
        \override LaissezVibrerTieColumn.tie-configuration = #`((-7 . ,DOWN)(-5 . ,DOWN))  
        2.\laissezVibrer| s2. |
    s2.*5
    s2.*7
    s2. | s1.
} 
leadTopForBb = \relative c'' {
    \override Beam.damping = #2 
    \override Stem.length-fraction = #(magstep 1.10)
    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne b8 bs4. ~ 4 } \relative c' { <ds cs>2.} >> \oneVoice |
    <b ds, cs>8 r4 <gs ds cs>4. ~ | 2. ~ | 2. | \break
    <as ds, b>4. 4. | <es ds b>2. ~ | 2. \breath | \break 

    r4 r8 ds8 gs [ bs ] | ds8 e16 ds  bs2 ~ | 2 b4 | 
    R2.*2 | 
    r4 r8 gs4-. b8-. ~ | b gs <bs ds, cs>2 | <gs ds>2. ~ | 2. ~ | 2 \breath b4  \bar "||" \break

    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne b8 bs4. ~ 4 } \relative c' { <ds cs>2. } >> \oneVoice |
    <b ds, cs>8 r4 << \relative c'' { \voiceOne gs4. ~ | 2. ~ | 2 r8 b8 } \relative c' { <ds cs>4.  | 2. ~ | 2. } >> \oneVoice | \pageBreak 
    <as ds, b>8 r4 \stemUp as4 b8 | \noBreak \stemUp \tuplet 3/2 { as8 b as } \tieUp es2 ~ | <es ds b>2.  \breath | \break 

    r2 gs8 bs | \stemDown \tuplet 3/2 { ds8 e ds } bs2 ~ | 2 b4 | 
    R2.*2 | 

    r2 r8 fs' | \noBreak e cs4. ~ 4 | 
    \tuplet 3/2 { r4 fs8 } \tuplet 3/2 { e8 cs ds } \tuplet 3/2 { e fs cs } | bs8 b as2 ~ | as2. ~ | as2. ~ | as2. | \breath | \break 

    \stemUp fs4. fss8 r8 \stemDown b \bar "||" 
    \time 6/4 \stemNeutral e4 ds \bar "!" b bs \bar "!" \stemUp <fs ds cs>2*3/4 \toCoda s8 | \bar "||" 
    \bar "||" \time 3/4
} 
leadTopForEb = \relative c'' {
    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne \stemDown b8 bs4. ~ 4 } \relative c' { <ds cs>2.} >> \oneVoice |
    <b ds, cs>8 r4 <gs ds cs>4. ~ | 2. ~ | 2. | \break
    <as ds, b>4. 4. | <es ds b>2. ~ | 2. \breath | \break 

    r4 r8 ds8 gs [ bs ] | ds8 e16 ds  bs2 ~ | 2 b4 | 
    R2.*2 | 
    r4 r8 gs4-. b8-. ~ | b gs <bs ds, cs>2 | <gs ds>2. ~ | 2. ~ | 2 \breath b4  \bar "||" \break

    <gs ds cs>4. <b ds, cs>8 r4 | << \relative c'' { \voiceOne \stemDown b8 bs4. ~ 4 } \relative c' { <ds cs>2. } >> \oneVoice |
    <b ds, cs>8 r4 << \relative c'' { \voiceOne \stemDown gs4. ~ | 2. ~ | 2 r8 b8 } \relative c' { <ds cs>4.  | 2. ~ | 2. } >> \oneVoice | \pageBreak 
    <as ds, b>8 r4 \stemDown as4 b8 | \noBreak \stemUp \tuplet 3/2 { as8 b as } \tieUp es2 ~ | <es ds b>2.  \breath | \break 

    r2 \stemDown gs8 bs | \tuplet 3/2 { ds8 e ds } bs2 ~ | 2 b4 | 
    R2.*2 | 

    r2 r8 \stemDown fs' | \noBreak e cs4. ~ 4 | 
    \tuplet 3/2 { r4 fs8 } \tuplet 3/2 { e8 cs ds } \tuplet 3/2 { e fs cs } | bs8 b as2 ~ | as2. ~ | as2. ~ | as2. | \breath | \break 

    fs4. fss8 r8 b \bar "||" 
    \time 6/4 e4 ds \bar "!" b bs  \bar "!" <fs ds cs>2*3/4 \toCoda s8 | \bar "||" 
    \bar "||" \time 3/4
} 
codaTop = \relative c'' {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -17 . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }
    \key e \major
    \time 3/4
    <gs ds cs>2. ~ | 2. ~ | 2. \bar "|."
}

leadBottom = \relative c, {
   fs4. 8 r4 | f2. |
   e8 r4 e4. ~ | 2. ~ | 2. | 
   gs4. cs4. | g2. ~ | 2. | 

   <gs as' cs>2. ~ | 2. ~ | 2. | 
   << \relative c' { d4. cs | \noBreak gs as } \\ \relative c { d4. cs | gs as } >>
       <b ds>2. ~ | 2. | 
   <f a'>2. ~ | 2. ~ | 2. \bar "||"

   fs4. 8 r4 | f2. |
   e8 r4 e4. ~ | 2. ~ | 2. |
   gs8 r4 cs4. | g2. ~ | 2. | \noPageBreak

   <gs as' cs>2. ~ | 2. ~ | 2. | \noPageBreak
   << \relative c' { e4. ds | \noBreak as b } \\ \relative c { e4. ds | as b } >> \noPageBreak
   <fs' as>2. ~ | 2. | \noPageBreak
   <g, b'>2. ~ | 2. | \noPageBreak
   <cs b'>2. ~ | 2. ~ | 2.| \bar "||" \noPageBreak


   fs,4. g8 r8 b \bar "||" \noPageBreak
   \time 6/4 e4 ds \bar "!" b c \bar "!" a2-\dc | \bar "||" 
   \bar "||" \time 3/4
} 
leadBottomForBb = \relative c, {
   fs4. 8 r4 | es2. |
   e?8 r4 e4. ~ | 2. ~ | 2. | 
   gs4. cs4. | fss,2. ~ | 2. | 

   <gs as' cs>2. ~ | 2. ~ | 2. | 
   << \relative c { d4. cs | \noBreak gs as } \\ \relative c, { d4. cs | gs as } >>
   <b ds>2. ~ | 2. | 
   <es, a'>2. ~ | 2. ~ | 2. \bar "||"

   fs4. 8 r4 | es2. |
   e?8 r4 e4. ~ | 2. ~ | 2. |
   gs8 r4 cs4. | fss,2. ~ | 2. | \noPageBreak

   <gs as' cs>2. ~ | 2. ~ | 2. | 
   << \relative c { e4. ds | \noBreak as b } \\ \relative c, { e4. ds | as b } >> \noPageBreak
   <fs' as>2. ~ | 2. | 
   <fss, b'>2. ~ | 2. | 
   <cs' b'>2. ~ | 2. ~ | 2.| \bar "||" \noPageBreak


   fs,4. fss8 r8 b \bar "||" 
   \time 6/4 e4 ds \bar "!" b bs \bar "!" a2-\dc | \bar "||" 
   \bar "||" \time 3/4 
} 
leadBottomForEb = \relative c, {
   \key e \major
   \time 3/4
   fs4. 8 r4 | es2. |
   e?8 r4 e4. ~ | 2. ~ | 2. | \noPageBreak
   gs4. cs4. | fss,2. ~ | 2. | \noPageBreak

   <gs as' cs>2. ~ | 2. ~ | 2. | 
   << \relative c' { d4. cs | \noBreak gs as } \\ \relative c { d4. cs | gs as } >> \noPageBreak
   <b ds>2. ~ | 2. | 
   <es, a'>2. ~ | 2. ~ | 2. \bar "||" \noPageBreak

   fs4. 8 r4 | es2. |
   e?8 r4 e4. ~ | 2. ~ | 2. | 
   gs8 r4 cs4. | fss,2. ~ | 2. | \noPageBreak

   <gs as' cs>2. ~ | 2. ~ | 2. |
   << \relative c' { e4. ds | \noBreak as b } \\ \relative c { e4. ds | as b } >> \noPageBreak
   <fs' as>2. ~ | 2. |
   <fss, b'>2. ~ | 2. |
   <cs' b'>2. ~ | 2. ~ | 2.| \bar "||" \noPageBreak


   fs,4. fss8 r8 b \bar "||" 
   \time 6/4 e4 ds \bar "!" b bs \bar "!" a2-\dc | \bar "||" 
   \bar "||" \time 3/4
} 
codaBottom = \relative c {
    \key e \major
    cs2. ~ | 2. ~ | 2. ||
}

melody = <<
    \new Voice = "lead" {
        \leadTop 
    }
    \new Voice = "lead" {
        \harmonyTop 
    }
>>

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }
    
    Slight -- ly o -- ver -- steeped green 
    jas -- mine tea
    is deemed a -- prop -- ri -- ate for me.

    We cause the same tone.

    The poi -- sened ra -- ku glaze browns
    my once fra -- grant fire es -- cape vine.

    It's a sym -- bol of the same.

    Once thrif -- ty, 
    my ri -- tu -- al us -- age e -- volved to bulk.

    Now, it re -- minds me of that time.
}



topline = \relative c'' {
}

midline = \relative c' {
}

bassline = \relative c' {
}


\include "ly/ily/layout-songs.ily"

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
        \new PianoStaff <<
            \set PianoStaff.instrumentName = #""
            \set PianoStaff.shortInstrumentName = #""
            \new ChordNames \transpose c c  { 
                \chordsSong 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Staff = "lower" {
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure 
                    \leadBottom
                >>
                \noPageBreak
            }
        >>
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new PianoStaff <<
                \set PianoStaff.instrumentName = #""
                \set PianoStaff.shortInstrumentName = #""
                \new Staff = "upper" {
                    \clef treble
                    \new Voice = "lead" {
                        \codaTop 
                    }
                }
                \new Staff = "lower" {
                    \clef bass
                    \codaBottom
                }
            >>
        >>
        \layout {
            indent = 4\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }


}

% \book {
%     \bookOutputSuffix "sound"
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                 s2. \chordsSong     
%                 \formChords 
%                 \formChords
%             }
%             \new Staff \transpose c c { s2. \topline }
%             \new Staff \transpose c c { s2. \midline }
%             \new Staff \transpose c c { s2. \bassline }
%         >>
%         \midi { }
%     }
% }



