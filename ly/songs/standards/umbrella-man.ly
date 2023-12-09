\version "2.19.81"

titleLeft = "The Umbrella"
titleRight = "Man"
title = "The Umbrella Man"
composerName = "J. Cavanaugh, L. Stock & V. Rose"
lyricistName = "J. Cavanaugh, L. Stock & V. Rose"


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm umbrella-man*pdf ; lilypond ly/songs/standards/umberella-man.ly ; open -a Preview umberella-man-for-*.pdf

killPreview
rm umbrella-man*pdf
lilypond ly/songs/standards/umberella-man.ly
mv umberella-man*.pdf pdf/songs/standards
for file in pdf/songs/standards/umbrella-man*pdf ; do open -a Preview $file ; done

%}

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
    \key d \minor

    \time 3/4 
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 1,1,1

    \startSection "Intro"
    s2.*10

    \startSection "Head In"
    s2.*8 \bar "||" \break
    s2.*8 \break

    \startSection "B"
    s2.*8 \bar "||" \break
    s2.*14 

    % \pageBreak

    % \startSection "Transition"
    \time 4/4 
    % s1*4

    % \startSection "Solos"
    % s1*8 \bar "||" \break
    % s1*8 \break

    % \startSection "B"
    % s1*8 \bar "||" \break
    % s1*8 \break


    % \startSection "Head Out"
    % s1*8 \bar "||" \break
    % s1*8 \break

    % \startSection "B"
    % s1*8 \bar "||" \break
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2. | b | bf | b |
    bf2. | b | 
    bf2. | s | s | s ||

    bf2. | s | f:7 | s | 
    f2.:7 | s | bf | s |

    f2.:7 | s | c:m7 | f:7 |
    f2.:7 | s | c:m7 | f:7 ||


    bf2. | s | f:7 | s | 
    f2.:7 | s | bf | s |

    ef2. | s | f:7 | s | 
    bf2. | f:7 | bf | f:7 | 
    c2.:m7 | f:7 | 
    bf2. | ef | c:m7 | f:7 |

}

melodyIntro = \relative c' { 
    f4-. r8 bf r d | ef4-. r8 bf r f32 g f ef | 
    f4-. r8 bf r d | ef4-. r8 bf r f32 g f ef | 
    f4-. r8 bf r d | ef4-. r8 bf r f32 g f ef | 
    f2. | g | a | g2 
}    

melodyThreeOne = \relative c' { 
    r8 f8 ||
    d8 f g f g f | d f g f g f | 
    ef4 f4. f8 | 2  r4 |

    ef8 f g f g f | ef f g f g f | 
    d4 f4.  8 ~ | 8 4.  r8 a | 

    r8 f r a f [ a ] ~ | a4. bf8 g [ a ] | 
    f4. 8 ef [ d ] | c4 r2 |

    a'4 bf8 g4 a8 | f4. g8 ef [ f ] |
    d4. ef8 \tuplet 3/2 { f8 e ef } | d4 r4 
}

melodyThreeTwo = \relative c' { 
    r8 f||
    d8 f g f g f | d f g f g f | 
    ef4 f4 r8 f8 | r4 f4  r8 c | 

    ef8 f g f g f | ef f g f g f | 
    d4 f4 r8  8 | 4 r f | 

    bf4 4 a | c8 bf r4 r8 f | 
    a4 8 g4 ef8 | f4 r f8 ef |

    d8 f g f g f | ef f a4 r | 
    d,8 f g f g f | ef f a4 r8 f ( |
    d8 ) f g f g f | ef4 a4 r8 f |
    bf2. ~ | 2. ~ | 2. | R2. || 
}
melodyForm = \relative c' { 
    \melodyIntro
    \melodyThreeOne
    \melodyThreeTwo
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 31 { \skip 1 }

    A too -- dle- lu -- ma- lu -- ma
    Too -- dle- lu -- ma- lu -- ma
    Too -- dle- -- aye- -- ay
    A -- ny um -- ber -- rel -- las, a -- ny um -- ber -- rel -- las to fix to -- day?

    Bring your par -- a -- sol
    It may be small
    It may be big
    He re -- pairs them all
    With what you call a thing -- a -- ma -- jig

    A pit -- ter pat -- ter pat -- ter, pit -- ter pat -- ter pat -- ter
    It looks like rain 
    Oh let it pit -- ter pat -- ter, let it pit -- ter pat -- ter
    Don't mind the rain

    He'll mend your um -- brel -- las and 
    Then go on his way sing -- ing
    Too -- dle- lu -- ma- -- lu -- ma- -- too -- dle- -- ay
    Too -- dle- lu -- ma- -- lu -- ma- -- too -- dle- -- ay
    A -- ny um -- ber -- rel -- las to fix to -- day?
}
lyricsHeadTwo = \lyricmode {
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
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
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
%   \bookOutputSuffix "for-Eb"
%     \header {
%         subtitle = ""
%         arranger = ""
%         instrumentName = "Eb Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         <<
%             \new ChordNames \transpose ef c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsForm 
%             }
%             \new Staff = "voice" \transpose ef, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \structure
%                     \melodyForm
%                 >>
%             }
%         >>
%     }
% }
