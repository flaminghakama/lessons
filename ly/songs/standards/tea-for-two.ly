\version "2.24.0"

titleLeft = "Tea For"
titleRight = "Two"
titleFull = "Tea For Two"
composerName = "V. Youmans"
lyricistName = "I. Caesar"
arranger = ""
copyright = ""

%{

killPreview ; rm tea-for-two*pdf ; lilypond ly/songs/standards/tea-for-two.ly ; for file in tea-for-two*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/tea-for-two*
lilypond ly/songs/standards/tea-for-two.ly 
mv tea-for-two*pdf pdf/songs/standards
for file in pdf/songs/standards/tea-for-two*pdf ; do op $file ; done 

git add . ; git commit -m"fixing wrong notes" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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
    \key af \major
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 
    \bar "|."
}
structureMulligan = \relative c' { 
    \key af \major
    \time 4/4
    \partial 2 s2 
    s1 
    \startSection "A"
    s1*4 
    s1*4 \break
    \startSection ""
    s1*4 
    s1*4 \break
    \startSection "B"
    s1*4 
    s1*4 \break
    \startSection ""
    s1*4 
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 bf:m7 | c:m7 df:maj7 |

    d2:m7 g:7 | d2:m7 g:7 | c:maj7 f:7 | e:m7 a:7 |
    d2:m7 g:7 | d2:m7 g:7 | c1:maj7 | bf2:m7 ef:7 |

    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | c1:m7.5- | f:7.9- |

    bf2:m7 f:7 | gf:7 f:7 | a:dim7 bf:m7 | df:maj7 gf:7 |
    af2:/c b:dim7 | bf:m7 ef:7 | af1:maj7 | s | 
}
chordsMulligan = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    r2 | R1 || 
    \chordsSong
}
chordsSongForF = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 cf:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 bf:m7 | c:m7 df:maj7 |

    d2:m7 g:7 | d2:m7 g:7 | c:maj7 f:7 | e:m7 a:7 |
    d2:m7 g:7 | d2:m7 g:7 | c1:maj7 | bf2:m7 ef:7 |

    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 cf:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | c1:m7.5- | f:7.9- |

    bf2:m7 f:7 | gf:7 f:7 | a:dim7 bf:m7 | df:maj7 gf:7 |
    af2:/c cf:dim7 | bf:m7 ef:7 | af1:maj7 | s | 
}
chordsSongForE = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 cf:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 bf:m7 | c:m7 df:maj7 |

    \transpose bs c {
        d2:m7 g:7 | d2:m7 g:7 | c:maj7 f:7 | e:m7 a:7 |
        d2:m7 g:7 | d2:m7 g:7 | c1:maj7 | }  bf2:m7 ef:7 |

    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 cf:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | c1:m7.5- | f:7.9- |

    bf2:m7 f:7 | gf:7 f:7 | bff:dim7 bf:m7 | df:maj7 gf:7 |
    af2:/c cf:dim7 | bf:m7 ef:7 | af1:maj7 | s | 
}

melody = \relative c'' { 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4 r | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | c'1 ~ | 2 r ||

    c4 8 a  b4 8 a | c4 8 a  b4 8 g | b4 8 g  a4 8 g | b4 8 g  a4 8 g | 
    c4 8 a  b4 8 a | c4 8 a  b4 g | e'1 ( | ef2. ) r4  ||

    af,4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | ef'1 ~ | 2 r ||

    f4. 8 ef4. 8 | df4. 8 c4. 8 | ef4. 8 df4. 8 | c4. 8 bf2 | 
    af4. f8 g4. f8 | af4. f8 g4 c | af1 ~ | 2 r ||
}
melodyForE = \relative c'' { 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4 r | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | c'1 ~ | 2 r ||

    \transpose bs, c \relative c'' { 
        c4 8 a  b4 8 a | c4 8 a  b4 8 g | b4 8 g  a4 8 g | b4 8 g  a4 8 g | 
        c4 8 a  b4 8 a | c4 8 a  b4 g | e'1 ( | ds2. ) r4  ||
    }

    af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | ef'1 ~ | 2 r ||

    f4. 8 ef4. 8 | df4. 8 c4. 8 | ef4. 8 df4. 8 | c4. 8 bf2 | 
    af4. f8 g4. f8 | af4. f8 g4 c | af1 ~ | 2 r ||
}


melodyMulligan = \transpose g af \relative c'' { 
    bf2 | b c||
    r8 c r b d4 b | c b8 d r4 r8 c | r c r c df4 4 | d b8 df r4 r8 c | 
    r8 c r b d4 b | c b d c | g2 af | a bf || 

    r8 ds r b fs4 ds | e ds8 fs r4 r8 e | r e r e f4 4 | g e8 fs r4 r8 e |
    r8 e r ds fs4 ds | e ds fs c | ds2 fs | d e || 

    % r8 c r b d4 b | c b8 d r4 r8 c | r c r c df4 4 | ef c8 d r4 r8 c | 
    % r8 c r b d4 b | c b d c | c2 df | d ef || 

    % f4. 8 ef4. 8 | df4. 8 c4. 8 | ef4. 8 df4. 8 | c4. 8 bf2 | 
    % af4. f8 g4. f8 | af4. f8 g4 c | af1 ~ | 2 r ||
}
harmonyMulligan = \transpose g af \relative c {
    e2 | f' fs ||

    r8 g r e8 fs4 e | g4 e8 fs r4 r8 fs | r fs r d e4 d | fs d8 f r4 r8 g | 
    r8 g r e8 fs4 e | g4 e fs e | b'2 c | df d || 

    r8 b r gs as4 gs | b gs8 as r4 r8 as | r as r fs gs4 fs | as fs8 a r4 r8 b |
    r8 b r gs as4 gs | b4 gs as gs | b2 bf | a af | 

    % r8 af r f8 g4 f | af4 f8 g r4 r8 g | r g r ef f4 ef | g ef8 gf r4 r8 af | 
    % r8 af r f8 g4 f | af4 f g f | g2 af | a bf | 

    % f4. 8 ef4. 8 | df4. 8 c4. 8 | ef4. 8 df4. 8 | c4. 8 bf2 | 
    % af4. f8 g4. f8 | af4. f8 g4 c | af1 ~ | 2 r ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Pic -- ture you u -- pon my knee
    Just tea for two and two for tea
    Me for you and you for me a -- lone

    No -- bo -- dy near us
    To see us or hear us
    No friends or re -- la -- tions
    On week -- end va -- ca -- tions
    We won't have it known, dear
    That we own a tel -- e -- phone 

    Day will break and you'll a -- wake
    And start to bake a su -- gar cake
    For me to take
    To all the boys to see

    Oh, we'll raise a fam -- i -- ly
    A boy for you, a girl for me
    Can't you see
    How hap -- py we would be?

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

% \book {
%   \bookOutputSuffix "in-E-for-C"
%     \header {
%         subtitle = "(Elaine key)"
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose af e <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSongForE
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melodyForE
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-E-for-Bb"
%     \header {
%         subtitle = "(Elaine key)"
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose as, c \transpose af e <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-E-for-Eb"
%     \header {
%         subtitle = "(Elaine key)"
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ds, c \transpose af e <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }



% \book {
%   \bookOutputSuffix "in-Ab-for-C"
%     \header {
%         subtitle = "(real book key)"
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Ab-for-Bb"
%     \header {
%         subtitle = "(real book key)"
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose bf, c <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-Ab-for-Eb"
%     \header {
%         subtitle = "(real book key)"
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef, c <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSong 
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }


% \book {
%   \bookOutputSuffix "in-F-for-C"
%     \header {
%         subtitle = "(compromise key)"
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose af f <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSongForF
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-F-for-Bb"
%     \header {
%         subtitle = "(compromise key)"
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose af f \transpose bf, c <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSongForF
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-F-for-Eb"
%     \header {
%         subtitle = "(compromise key)"
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose af f \transpose ef, c <<
%              \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily"
%                 \chordsSongForF
%             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \override Stem.length-fraction = #(magstep 1.2)
%                     \structure
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadTwo } 
%             }
%         >>
%     }
% }

\book {
  \bookOutputSuffix "mulligan-in-G-for-C"
    \header {
        subtitle = "(G. Mulligan transcription)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose af g <<
             \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsMulligan
            }
            \new Staff \with {
                \consists Merge_rests_engraver
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureMulligan
                    <<
                        \melodyMulligan \\
                        \harmonyMulligan
                    >>
                >>
            }
        >>
    }
}

