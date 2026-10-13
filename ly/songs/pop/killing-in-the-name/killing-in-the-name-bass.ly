\version "2.24.0"

%% "Killing In the Name" - Bass part
%% Generated from killing-in-the-name.ly by gen-parts.py; edit the master, not this.

\header {
  title = "Killing In the Name"
  subtitle = "Bass"
  tagline = ##f
}

%% Staff size matched to the score; the lyric line needs the room.
#(set-global-staff-size 16)
\paper { ragged-last-bottom = ##f }

swing = \markup {
  \concat {
    \italic "Swing 16ths  ( "
    \note {16} #1 \note {16} #1
    \italic " = "
    \raise #1.1 \tiny "3"
    \hspace #-1.0
    \note {8} #1 \note {16} #1
    \italic " )"
  }
}


global = { \key c \major }

%% Chord symbols. Derived from the transcribed bass line and cross-checked
%% against published chord charts for the tune (D5/Eb5 intro, D7#9 riff,
%% D13-D7b13-D7 descent under the verse, D pedal at B).
%% Concert pitch; the sax part transposes these along with its notes.
chordPart = \chordmode {
  \set chordChanges = ##t
  d1:5 |  % 1
  d1:5 |
  d1:5 |
  d1:5 |
  d2:5 ees2:5 |  % 5
  d2:5 ees2:5 |
  d2:5 ees2:5 |
  d2:5 ees2:5 |
  d2:5 ees2:5 |  % 9
  d2:5 ees2:5 |
  d2:5 ees2:5 |
  d2:5 ees2:5 |
  d2:5 ees2:5 |  % 13
  d2:5 ees2:5 |
  d2:5 ees2:5 |
  \time 2/4 d2:5 |  % 16
  s2 |  % 17
  \time 4/4 d1:7.9+ |  % 18  Pre-verse
  d1:7.9+ |
  d1:7.9+ |
  d1:7.9+ |
  d1:7.9+ |  % 22  A
  d1:7.9+ |
  d1:7.9+ |
  d1:7.9+ |
  d2:13^9.11 d2:7.13- |  % 26
  d2:7 d2:7.9+ |
  d2:13^9.11 d2:7.13- |
  d2:7 d2:5 |  % 29
  d1:5 |  % 30  B
  d1:5 |
  d1:5 |
  d1:5 |  % 33  (1st ending)
  d1:5 |  % 34  (2nd ending)
  \set chordChanges = ##f d2:5 \set chordChanges = ##t d8:5 f8:5 g8:5 c8:5 |  % 35  C
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |  % 38
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \repeat volta 2 {
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  }
  %% Pre-chorus
  %% Chords follow the climbing horn line.
  d1:5 |
  e1:5 |
  f1:5 |
  a1:5 |
  bes1:5 |
  c1:5 |
  d1:5 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \repeat volta 2 {
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  }
  %% Post-chorus: four more bars of the chorus.
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d2:5 d8:5 f8:5 g8:5 c8:5 |
  d1:5 |
  d2:5 ees2:5 |  % 39  Coda
}

voxPart = {
  R1 |  % 1
  R1 |
  R1 |
  R1 |
  R1 |  % 5
  R1 |
  R1 |
  R1 |
  \repeat volta 2 {
    R1 |  % 9
  R1 |
  R1 |
    R1 |
  }
  R1 |  % 17
  R1 |
  R1 |
  \time 2/4 R2 |
  c16 c16 c16 c16 c8 c8 |  % 21
  \time 4/4 R1 |
  R1 |
  R1 |
  R1 |  % 25
  \repeat volta 2 {
    r16 c16 c16 c16 r16 c16 c8 c8 c8 r4 |
  r16 c16 c16 c16 r16 c16 c8 c8 c8 r4 |
  r16 c16 c16 c16 r16 c16 c8 c8 c8 r4 |
    r16 c16 c16 c16 r16 c16 c8 c8 c8 r4 |  % 29
  }
  c4 r2. |
  r2 c16 c16 c16 c16 c8 c8 |
  R1 |
  r2 c16 c16 c16 c16 c8 c8 |  % 37
  \repeat volta 3 {
    r4 r8 c16 c16 c16 c16 c16 c16 r16 c16 r8 |  % 30  B
  r4 r8 c16 c16 c16 c16 c16 c16 r16 c16 r8 |
  r4 r8 c16 c16 c16 c16 c16 c16 r16 c16 r8 |
  }
  \alternative {
    { r4 r8 c16 c16 c16 c16 c16 c16 r16 c16 r8 | }
    { r4 r8 c16 c16 c16 c16 c16 c16 r16 c16 r8 | }
  }
  \repeat volta 2 {
  c8 c16 c16 r8. c16 c8 c16 c16 r8. c16 |  % 35  C
  c16 c16 c16 c16 r8 c16 c16 c16 c16 c8 r4 |
  c8 c16 c16 r8. c16 c8 c16 c16 r8. c16 |  % 37
  c16 c16 c16 c16 r8 c16 c16 c16 c16 c8 r4 |  % 38
  }
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \repeat volta 2 {
  R1 |
  R1 |
  R1 |
  R1 |
  }
  %% Pre-chorus
  %% One syllable a bar, free - no rhythm intended.
  c1 |
  c1 |
  c1 |
  c1 |
  c1 |
  c1 |
  c1 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \repeat volta 2 {
  R1 |
  R1 |
  R1 |
  R1 |
  }
  %% Post-chorus: four more bars of the chorus.
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |  % 39  Coda
  
  \bar "|."
}

%% Pre-chorus vocal. Type the line between the quotes once and it appears
%% under all seven bars. Keep the quotes - it is one lyric event per bar.
preChorusLine = \lyricmode { "" }

%% Lyrics. One line, shared by the score and every part.
voxLyrics = \lyricmode {
  Kil -- ling in the name of Some of those that work for -- ces are the same that burn cros -- ses Some of those that work for -- ces are the same that burn cros -- ses Uh! Kil -- ling in the name of Kil -- ling in the name of
  Now you do what they told ya Now you do what they told ya Now you do what they told ya Now you do what they told ya Now you do what they told ya
  Those who died are jus -- ti -- fied, for wear -- ing the badge, they're the cho -- sen whites
  Those who died are jus -- ti -- fied, for wear -- ing the badge, they're the cho -- sen whites
  %% Pre-chorus, one per bar:
  \preChorusLine
  \preChorusLine
  \preChorusLine
  \preChorusLine
  \preChorusLine
  \preChorusLine
  \preChorusLine
}

%% The line the horns and guitar share, written at CONCERT pitch.
%% Edit it here and both parts follow.
leadLine = {
  \global
  \override Glissando.style = #'zigzag
  \mark \markup { \box \bold "Intro" } \tempo 4 = 112 d,1 |  % 1
  d,1 |
  d,1 |
  d,1 |
  R1 |  % 5
  R1 |
  R1 |
  R1 |
  \repeat volta 2 {
  d,8. d,16 ~ d,8 d,8 cis8 d8 fis8 g8 |
  d,8. d,16 ~ d,8 d,8 cis8 d8 fis8 g8 |
  d,8. d,16 ~ d,8 d,8 cis8 d8 fis8 g8 |
    d,8. d,16 ~ d,8 d,8 cis8 d8 gis8 g8 |
  }
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 17
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \time 2/4 \tuplet 3/2 { d,4 d,4 d,4 } |
  \tempo "Slower" R2 |  % 21
  \mark \markup { \box \bold "A'" } \time 4/4 d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |  % 25
  \repeat volta 2 {
    \mark \markup { \box \bold "A" } R1 |
  R1 |
  R1 |
  %% Last bar of A (printed 25): sax runs up to the octave; guitar stays out.
    \tag #'sax { r4 r8 a,16 bes,16 b,16 c16 des16 d16 f16 fis16 a8 | }
    \tag #'guitar { R1 | }  % 29
  }
  d,8 c16 d16 \deadNote c16 \deadNote c16 b8 d,8 c16 d16 \deadNote c16 \deadNote c16 bes8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 a8 d,8 d,16 c,16 f,16 c,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 b8 d,8 c16 d16 \deadNote c16 \deadNote c16 bes8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 a8 d,16 d,16 d,16 d,16 d,16 d,16 d,16 d,16 |  % 37
  \repeat volta 3 {
    \mark \markup { \box \bold "B" } \tempo "Slightly Faster, Swung 16th" d2^\markup { \italic "Play 3rd time only" }\glissando d,2 |
  d,2\glissando d2 |
  d2\glissando d,2 |
  }
  \alternative {
    { d,2\glissando d2 | }
    { d16 d16 ~ d8 d4 \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } | }
  }
  \mark \markup { \box \bold "C" }
  \repeat volta 2 {
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  }
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \mark \markup { \box \bold "Solos" }
  \repeat volta 2 {
    s1 |
    s1 |
    s1 |
    s1 |
  }
  %% Pre-chorus
  \mark \markup { \box \bold "D'" }
  \tempo "Slightly Slower"
  d,1 |
  e,1 |
  f,1 |
  a,1 |
  bes,1 |
  c1 |
  d1 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \mark \markup { \box \bold "D" }
  \tempo "a tempo"
  \repeat volta 2 {
  R1 |
  R1 |
  R1 |
  R1 |
  }
  %% Post-chorus: four more bars of the chorus.
  \mark \markup { \box \bold "Outro" }
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \mark \markup { \box \bold "Coda" } \tempo "Slightly Slower" \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 39  Coda
  
  \bar "|."
}

%% Bari sax in Eb: written a major 6th + octave above concert.
%% \transpose handles the pitches AND the key signature (concert C -> written A).
saxPart = \transpose ees, c' { \clef treble \keepWithTag #'sax \leadLine }

%% Guitar reads the same line up an octave so it sits on the staff instead
%% of hanging off the bottom; treble clef, sounding 8vb as guitar always does.
guitarPart = \transpose c c' { \clef "treble_8" \keepWithTag #'guitar \leadLine }

bassPart = {
  \clef bass
  \global
  \mark \markup { \box \bold "Intro" } \tempo 4 = 112 d,1 |  % 1
  d,1 |
  d,1 |
  d,1 |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 5
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \repeat volta 2 {
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  }
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 17
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |
  \time 2/4 \tuplet 3/2 { d,4 d,4 d,4 } |
  \tempo "Slower" R2 |  % 21
  \mark \markup { \box \bold "A'" } \time 4/4 d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |  % 25
  \repeat volta 2 {
    \mark \markup { \box \bold "A" }
    \repeat percent 4 { d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 | }
  }
  d,8 c16 d16 \deadNote c16 \deadNote c16 b8 d,8 c16 d16 \deadNote c16 \deadNote c16 bes8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 a8 d,8 d,16 c,16 f,16 c,16 ees,8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 b8 d,8 c16 d16 \deadNote c16 \deadNote c16 bes8 |
  d,8 c16 d16 \deadNote c16 \deadNote c16 a8 d,16 d,16 d,16 d,16 d,16 d,16 d,16 d,16 |  % 37
  \repeat volta 3 {
    \mark \markup { \box \bold "B" } \tempo "Slightly Faster, Swung 16th" d16 d16 ~ d8 d4 r2 |
  d16 d16 ~ d8 d4 r2 |
  d16 d16 ~ d8 d4 r2 |
  }
  \alternative {
    { d16 d16 ~ d8 d4 r2 | }
    { d16 d16 ~ d8 d4 \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } | }
  }
  \mark \markup { \box \bold "C" }
  \repeat volta 2 {
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |
  d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 |  % 53
  }
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \repeat volta 2 {
    \repeat percent 4 { d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 | }
  }
  %% Pre-chorus: D pedal in whole notes under the horn line.
  d,1 |
  d,1 |
  d,1 |
  d,1 |
  d,1 |
  d,1 |
  d,1 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \repeat volta 2 {
    \repeat percent 4 { d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 | }
  }
  %% Post-chorus: four more bars of the chorus.
  \repeat percent 4 { d16 d16 ~ d8 d8. d16 ~ d16 d16 f,8 g,8 c8 | }
  %% All-in 16th-note triplets, the whole bar.
  \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } \tuplet 3/2 { d16 d16 d16 } |
  \mark \markup { \box \bold "Coda" } \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 39  Coda
  
  \bar "|."
}

drumsUp = \drummode {
  <cymc hho>4 hho4 hho4 hho4 |  % 1
  <cymc hho>4 hho4 hho4 hho4 |
  <cymc hho>4 hho4 hho4 hho4 |
  <cymc hho>4 hho4 hho4 hho4 |
  R1 |  % 5
  R1 |
  R1 |
  r4 r4 r4 r8 sn8 |
  \repeat volta 2 {
  <cymc hhc>8 hhc8 <hhc sn>8 hhc8 hhc16 sn16 hhc8 <hhc sn>8 hho8 |
  hhc8 hhc8 <hhc sn>8 hhc8 hhc16 sn16 hhc8 <hhc sn>8 hho8 |
  hhc8 hhc8 <hhc sn>8 hhc8 hhc16 sn16 hhc8 <hhc sn>8 hho8 |
  hhc8 hhc8 <hhc sn>8 hhc8 hhc16 sn16 hhc8 <hhc sn>8 hho8 |
  }
  \tuplet 3/2 { <hho sn>8 bd8 <hho sn>8 } \tuplet 3/2 { bd8 <hho sn>8 bd8 } \tuplet 3/2 { <cymc bd>4 <cymc bd>4 <cymc bd>4 } |  % 17
  \tuplet 3/2 { <hho sn>8 bd8 <hho sn>8 } \tuplet 3/2 { bd8 <hho sn>8 bd8 } \tuplet 3/2 { <cymc bd>4 <cymc bd>4 <cymc bd>4 } |
  \tuplet 3/2 { <hho sn>8 bd8 <hho sn>8 } \tuplet 3/2 { bd8 <hho sn>8 bd8 } \tuplet 3/2 { <cymc bd>4 <cymc bd>4 <cymc bd>4 } |
  \time 2/4 \tuplet 3/2 { <hho bd>8 bd8 <hho bd>8 } \tuplet 3/2 { bd8 <hho bd>8 bd8 } |
  sn4 r4 |  % 21
  \time 4/4 <cymch hho>8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 |
  hho8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 |
  hho8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 |
  hho8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 |  % 25
  \repeat volta 2 {
    \repeat percent 4 { hhc8 hhc8 <hhc sn>8 hhc8 hhc8 hhc8 <hhc sn>8 hho8 | }
  }
  <cymch hho>8 hho8 <hho sn>8 hho8 <cymch hho>8 hho8 <hho sn>8 hho8 |
  <cymch hho>8 hho8 <hho sn>8 hho8 <cymch hho>8 hho8 <hho sn>8 <cymch hho>8 |
  <cymch hho>8 hho8 <hho sn>8 hho8 <cymch hho>8 hho8 <hho sn>8 hho8 |
  <cymch hho>8 hho8 <hho sn>8 hho8 <hho sn>16 <hho sn>16 <hho sn>16 <hho sn>16 <hho sn>16 <hho sn>16 <hho sn>16 <hho sn>16 |  % 37
  \repeat volta 3 {
    <hhc sn>16 sn16 r8 <hhc sn>4 hhc4 hhc4 |
  <hhc sn>16 sn16 r8 <hhc sn>4 hhc4 hhc4 |
  <hhc sn>16 sn16 r8 <hhc sn>4 hhc4 hhc4 |
  }
  \alternative {
    { <hhc sn>16 sn16 r8 <hhc sn>4 hhc4 hhc4 | }
    { <hhc sn>16 sn16 r8 <hhc sn>4 \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } | }
  }
  \repeat volta 2 {
    %% C: crash on 1, open hats in 8ths, snare on 2 and 4. Same bar all four times.
    \repeat percent 4 { <cymc hho>8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 | }
  }
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \repeat volta 2 {
    \repeat percent 4 { <cymc hho>8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 | }
  }
  %% Pre-chorus
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \repeat volta 2 {
    \repeat percent 4 { <cymc hho>8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 | }
  }
  %% Post-chorus: four more bars of the chorus.
  \repeat percent 4 { <cymc hho>8 hho8 <hho sn>8 hho8 hho8 hho8 <hho sn>8 hho8 | }
  \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } \tuplet 3/2 { sn16 sn16 sn16 } |
  \tuplet 3/2 { <hho sn>8 bd8 <hho sn>8 } \tuplet 3/2 { bd8 <hho sn>8 bd8 } \tuplet 3/2 { <cymc bd>4 <cymc bd>4 <cymc bd>4 } |  % 39  Coda
}

drumsDown = \drummode {
  bd4 r4 r4 r4 |  % 1
  bd4 r4 r4 r4 |
  bd4 r4 r4 r4 |
  bd4 r4 r4 r4 |
  R1 |  % 5
  R1 |
  R1 |
  R1 |
  \repeat volta 2 {
  bd8. bd16 ~ bd8 bd8 ~ bd8 r16 bd16 ~ bd8 bd8 |
  bd8. bd16 ~ bd8 bd8 ~ bd8 r16 bd16 ~ bd8 bd8 |
  bd8. bd16 ~ bd8 bd8 ~ bd8 r16 bd16 ~ bd8 bd8 |
  bd8. bd16 ~ bd8 bd8 ~ bd8 r16 bd16 ~ bd8 bd8 |
  }
  s1 |  % 17
  s1 |
  s1 |
  \time 2/4 s2 |
  bd4 r4 |  % 21
  \time 4/4 bd4 r4 bd4 r4 |
  bd4 r4 bd4 r4 |
  bd4 r4 bd4 r4 |
  bd4 r4 bd4 r4 |  % 25
  \repeat volta 2 {
    \repeat percent 4 { bd4 r4 bd4 r4 | }
  }
  bd4 r4 bd4 r4 |
  bd4 r4 bd4 r8 bd8 |
  bd4 r4 bd4 r4 |
  bd4 r4 r4 r4 |  % 37
  \repeat volta 3 {
    s1 |
  s1 |
  s1 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  \repeat volta 2 {
    %% C kick: 1 e a | (a) | (&) | -
    \repeat percent 4 { bd16 bd8 bd16 r8. bd16 r8 bd8 r4 | }
  }
  %% Solos: same four-bar loop as C, open. Vamp, then D.S. back to A.
  \repeat volta 2 {
    \repeat percent 4 { bd16 bd8 bd16 r8. bd16 r8 bd8 r4 | }
  }
  %% Pre-chorus
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  %% Chorus: the solo-section bass line, four bars, repeated.
  \repeat volta 2 {
    \repeat percent 4 { bd16 bd8 bd16 r8. bd16 r8 bd8 r4 | }
  }
  %% Post-chorus: four more bars of the chorus.
  \repeat percent 4 { bd16 bd8 bd16 r8. bd16 r8 bd8 r4 | }
  s1 |
  s1 |  % 39  Coda
}
\score {
  <<
  \new ChordNames { \chordPart }
  \new Staff = "main" \with { instrumentName = "Bass" } <<
    \new Voice { \bassPart }
    \new NullVoice = "vox" { \voxPart }
  >>
  \new Lyrics \with { alignAboveContext = "main" }
    \lyricsto "vox" { \voxLyrics }
  >>
  \layout {
    \context { \Staff \override TimeSignature.style = #'numbered }
    \context { \DrumStaff \override TimeSignature.style = #'numbered }
    \context { \RhythmicStaff \override TimeSignature.style = #'numbered }
  }
}
