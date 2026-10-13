\version "2.24.0"

%% "Killing In the Name" - bass and vocal only.
%% Generated from the same source as the full score; bar numbers match.

\header {
  title = "Killing In the Name"
  subtitle = "bass and vocal"
  tagline = ##f
}

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

#(set-global-staff-size 17)

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
  R1 |  % 39  Coda
  
  \bar "|."
}

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
  \mark \markup { \box \bold "Pre-verse" } \time 4/4 d,8 c16 d16 \deadNote c16 \deadNote c16 ees16 f16 d8 d,8 f,16 d,16 ees,8 |
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
  \mark \markup { \box \bold \concat { \musicglyph "scripts.coda" " Coda" } } \tuplet 3/2 { d,4 d,4 d,4 } \tuplet 3/2 { ees4 ees4 ees4 } |  % 39  Coda
  
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordPart }
    \new RhythmicStaff \with { instrumentName = "Voice" } {
      \new Voice = "vox" { \voxPart }
    }
    \new Lyrics \lyricsto "vox" { Kil -- ling in the name of Some of those that work for -- ces are the same that burn cros -- ses Some of those that work for -- ces are the same that burn cros -- ses Uh! Kil -- ling in the name of Kil -- ling in the name of Now you do what they told ya Now you do what they told ya Now you do what they told ya Now you do what they told ya Now you do what they told ya Those who died are jus -- ti -- fied, for wear -- ing the badge, they're the cho -- sen whites Those who died are jus -- ti -- fied, for wear -- ing the badge, they're the cho -- sen whites }
    \new Staff \with { instrumentName = "Bass" } { \bassPart }
  >>
  \layout {
    \context { \Staff \override TimeSignature.style = #'numbered }
    \context { \RhythmicStaff \override TimeSignature.style = #'numbered }
  }
}
