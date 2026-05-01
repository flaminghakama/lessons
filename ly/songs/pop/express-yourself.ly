\version "2.24.0"

titleLeft = "Express"
titleRight = "Yourself"
titleFull = "Express Yourself"
composerName = "C. Wright"
arranger = ""
copyright = ""

%  Needs rest of form
%  Needs horn licks

%{

killPreview ; rm express-yourself*pdf ;  lilypond ly/songs/pop/express-yourself.ly  ; for file in express-yourself*.pdf ; do op $file ; done  

killPreview
rm express-yourself*pdf
lilypond ly/songs/pop/express-yourself.ly
mv express-yourself*.pdf pdf/songs/pop
for file in pdf/songs/pop/express-yourself*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.padding = #0

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


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}


structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \tempo 4=176
    \key ef \major
    \time 4/4

    \startSection "Intro"
    \repeat volta 2 { 
        \startRepeat
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "C1"
    \startRepeat
    s1*4

    \startSection "V1"
    \doubleRepeat
    s1*4

    \startSection "C2"
    \endRepeat
    s1*4

    \startSectionWithLabel "V2" "4X"
    \startRepeat
    s1*4

    \startSection "Bridge"
    \endRepeat
    s1*8

    \startSection "C3"
    \startRepeat
    s1*4

    \startSectionWithLabel "V3" "Play 4X"
    \doubleRepeat
    s1*4

    \startSection "Hits"
    \endRepeat
    s1*4
    s1*4
    s1*4
    s1*4

    \startSection "Pre-chorus"
    s1*8

    \startSection "C4"
    \startRepeat
    s1*4

    \startSectionWithLabel "V4" "Play 4X"
    \doubleRepeat
    s1*4

    \startSection "C5"
    s1*4

    \startSection "Scat"
    s1*32

    \startSection "Coda"
    \endRepeat
    s1*4 \break
    \startSectionWithLabel "" "Repeat & Fade"
    \startRepeat
    s1*8
    \endRepeat
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )

    % "Intro"
    s1*3
    s1
    s1

    % "C1"
    s1*4

    % "V1"
    s1*4

    % "C2"
    s1*4

    % "V2" "4X"
    s1*4

    % "Bridge"
    s1*8

    % "C3"
    s1*4

    % "V3" "Play 4X"
    s1*4 \break 

    % "Hits"
    s1*4
    s1*4
    s1*4
    s1*4

    % "Pre-chorus"
    s1*8

    % "C4"
    s1*4

    % "V4" "Play 4X"
    s1*4

    % "C5"
    s1*4

    % "Scat"
    s1*32

    % "Coda"
    s1*4
    % "Repeat & Fade"
    s1*8
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    ef1 | af2 bf || af bf || 

    ef1:6 | af2 bf:6 | ef1:6 | af2 bf:6 |
    ef1:6 | af2 bf:6 | ef1:6 | af2 bf:6 |
    ef1:6 | af2 bf:6 ||

    ef1:7 | af2:7 bf:6 | ef1:7 | af2:7 bf:6 | 
    ef1:7 | af2:7 bf:6 | ef1:7 | af2:7 bf:6 | 


}

bassIntro = \relative c' { 
    ef8 r ef,16 [ r8 ef'16 ]  g, af8 bf16   r g [ r ef ] |
    af16 [ r8 ef16 ]  af g f bf  r2 |
}

melodyChorus = \relative c'' { 
    r2 r8. bf16  gf'8. c,16 || 
    c8 ( bf ) r4  r2 | r2 r8. bf16  gf'8. c,16 | 
    c8 ( bf ) r4  r2 | r2 r4 r16 bf c8 | 

    gf'8. c,16 ef8. f16 ~ 4 r8. c16 | ef4 8 16 gf ~ 4 r | 
    gf8 c, ef c16 gf' ~ 8 c,4. | r2 r8. bf16 g'8. c,16 | 

    c8 ( bf ) r4  r2 | r2 
}

melodyVerse = \relative c'' { 
    r8. bf16 c c ef8 ||
    gf4 ( df ) r2 | r2 r4 g8 d | 
    d8 ( bf ) r4  r2 | r2 r8. bf16 c c ef8 | 
    
    ef'4 \glissando gf,8. ef16 ~ 8 c4 gf8 | ef4 r r gf'8 d |
    c8 ( bf ) r4 r r8 ef | c4 r r r8   
}

melodyPrechorus = \relative c'' { 
    c8 || 
    gf'4  ef8 c16 gf' ~ 8 c,  r8 c16 c | 
    gf'16 c,8.  ef8 c16 gf' ~ 16 c,8 16  ef8 c | 
}

melodySong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    \melodyChorus
    \melodyVerse
    \melodyPrechorus
}

hornsChorus = \relative c'' { 
    r4 ef ef, r | R1*3 | 
}
hornOneVerse = \relative c'' { 
    r2 bf8 8 r bf | R1 | r2 c8 8 r d | R1 |     
}
hornTwoVerse = \relative c'' { 
    r2 g8 8 r g | R1 | r2 f8 8 r g | R1 |
}
hornThreeVerse = \relative c { 
    r2 ef8 8 r ef | R1 | r2 ef8 8 r d | R1 |     
}
hornOneBridge = \relative c'' { 
    R1*2 | r4 df r df | R1 |
}
hornTwoBridge = \relative c' { 
    R1*2 | r4 df r df | R1 |
}
hornThreeBridge = \relative c { 
    R1*1 | r2 r4 r8 a8 | bf4 r bf r | R1 |
}
hornsHits = \relative c'' { 
    r4 ef8 8  8 c r ef | r gf r4 r2 | 
    r4 ef8 8  8 c r bf | R1 | 

    r4 gf'8 8  8 ef r c' | r gf r4 r2 | 
    ef4 8 c  ef c gf ef | R1 ||

    r4 ef'8 8  8 c r ef | r gf r4 r2 | 
    r4 ef8 8  8 c r bf | R1 | 

    r4 gf'8 8  8 ef r c' | r gf r ef r c r4 | 
    ef4 8 c  ef c bf4 | df8 bf af4  bf8 af ef4 ||
}
hornOnePrechorus= \relative c' { 
    ef4 r r2 | R1*3 |
}
hornTwoPrechorus= \relative c' { 
    af4 r r2 | R1*3 |
}
hornThreePrechorus= \relative c { 
    af4 r r2 | R1*2 | r4 ef' r2 | 
}
hornOneChorusFive = \relative c'' { 
    r4 ef ef, r | R1*2 | r2 ff || 
}
hornOneScat = \relative c' { 
    ef1 ~ | 1 ~ | 1  | af | 
    g1 ~ | 1 ~ | 1 | bf ~ | 
    bf1 ~ | 1 ~ | 1 | cf | 
    bf1 ~ | 1 ~ | 2 r | bf1 | 

    ef1 ~ | 1 ~ | 1  | ff | 
    ef1 ~ | 1 ~ | 1 | bf | 
    ef1 ~ | 1 ~ | 1 | ff | 
    ef1 ~ | 1 ~ | 1 | bf | 
}
hornTwoChorusFive = \relative c' { 
    r4 ef ef, r | R1*2 | r2 ff || 
}
hornTwoScat = \relative c { 
    ef1 ~ | 1 ~ | 1  | ff | 
    ef1 ~ | 1 ~ | 1 | bf' | 
    g1 ~ | 1 ~ | 1 | bf ~ | 
    bf1 ~ | 1 ~ | 2 r | bf1 | 

    bf1 ~ | 1 ~ | 1  | bf | 
    bf1 ~ | 1 ~ | 1 | bf | 
    bf1 ~ | 1 ~ | 1 | bf | 
    bf1 ~ | 1 ~ | 1 | bf | 
}
hornThreeChorusFive = \relative c' { 
    r4 ef ef, r | R1*2 | r2 ff || 
}
hornThreeScat = \relative c { 
    ef1 ~ | 1 ~ | 1  | ff | 
    ef1 ~ | 1 ~ | 1 | f | 
    ef1 ~ | 1 ~ | 1 | ff | 
    ef1 ~ | 1 ~ | 2 r | f1 | 

    ef1 ~ | 1 ~ | 1  | df | 
    ef1 ~ | 1 ~ | 1 | f | 
    ef1 ~ | 1 ~ | 1 | ff | 
    ef1 ~ | 1 ~ | 1 | f | 
}
hornOneCoda = \relative c'' { 
    R1 | gf8 bf r4 r2 | r2 af8 g af bf | R1 | 

    ef4 r r2 | gf,8 g r4 r2 | r2 af8 g af bf | R1 |
    ef4 r r2 | gf,8 g r4 r2 | r2 af8 g af4 | R1 |
}
hornTwoCoda = \relative c' { 
    r2 r4 r8 c | gf8 g r4 r2 | r2 f8 g af bf | R1 | 

    r2 r4 r8 c | gf8 g r4 r2 | r2 f8 g af bf | R1 | 
    r2 r4 r8 c | gf8 g r4 r2 | r2 f8 g af4 | R1 | 
}
hornThreeCoda = \relative c { 
    ef4 r ef r | r2 r4 r8 g, | af4 r r2 | r2 r4 a8 bf | 

    r2 ef4 r | R1 | af,8 g af4 r2 | r4 r8 a bf a bf4 |  
    r2 ef4 r | r2 r4 r8 g,8 | af4 4 r2 | r4 r8 af bf4 4 |  
}

hornTwoSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    R1*3 | R1 | R1 ||

    \transpose ef ef, \hornsChorus
    \hornTwoVerse
    \transpose ef ef, \hornsChorus
    \hornTwoVerse

    R1*4
    \hornTwoBridge
    \transpose ef ef, \hornsChorus
    \hornTwoVerse

    \transpose ef ef, \hornsHits
    \hornTwoPrechorus
    \hornTwoBridge
    \transpose ef ef, \hornsChorus
    \hornTwoVerse
    \hornTwoChorusFive

    \hornTwoScat 
    \hornTwoCoda
}
hornOneSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    R1*3 | R1 | R1 ||

    \hornsChorus
    \hornOneVerse
    \hornsChorus
    \hornOneVerse

    R1*4
    \hornOneBridge
    \hornsChorus
    \hornOneVerse

    \hornsHits
    \hornOnePrechorus
    \hornOneBridge
    \hornsChorus
    \hornOneVerse
    \hornOneChorusFive

    \hornOneScat 
    \hornOneCoda
}
hornOneAndTwoSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    R1*3 | R1 | R1 ||

    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
    >>
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
    >>

    R1*4
    \hornOneBridge
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
    >>

    \hornsHits
    <<
        \hornOnePrechorus
        \hornTwoPrechorus
    >>
    \hornOneBridge
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
    >>
    \hornOneChorusFive

    <<
        \hornOneScat
        \transpose ef, ef \hornTwoScat
    >>
    <<
        \hornOneCoda \\
        \transpose ef, ef \hornTwoCoda
    >>
}


hornThreeSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    R1*3 | R1 | R1 ||

    \transpose ef ef, \hornsChorus
    \hornThreeVerse
    \transpose ef ef, \hornsChorus
    \hornThreeVerse

    R1*4
    \hornThreeBridge
    \transpose ef ef, \hornsChorus
    \hornThreeVerse

    \transpose ef ef, \hornsHits
    \hornThreePrechorus
    \hornThreeBridge
    \transpose ef ef, \hornsChorus
    \hornThreeVerse
    \hornThreeChorusFive

    \hornThreeScat 
    \hornThreeCoda
}

hornsSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    R1*3 | R1 | R1 ||

    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
        \transpose ef, ef \hornThreeVerse
    >>
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
        \transpose ef, ef \hornThreeVerse
    >>

    R1*4
    <<
        << 
            \hornOneBridge
            \hornTwoBridge
        >> \\
        \transpose ef, ef \hornThreeBridge
    >>
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
        \transpose ef, ef \hornThreeVerse
    >>

    \hornsHits
    <<
        \hornOnePrechorus
        \transpose ef, ef \hornThreePrechorus
    >>
    <<
        \hornOneBridge \\
        \transpose ef, ef \hornThreeBridge
    >>
    \hornsChorus
    <<
        \hornOneVerse
        \hornTwoVerse
        \transpose ef, ef \hornThreeVerse
    >>
    \hornOneChorusFive

    \transpose ef, ef <<
        \hornOneScat
        \hornTwoScat
        \hornThreeScat
    >>
    <<
        << 
            \hornOneCoda
            \transpose ef, ef \hornTwoCoda
        >>  \\
        \transpose ef, ef \hornThreeCoda
    >>
}



lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 14 { \skip 1 }

    Ex -- press your -- self.
    Ex -- press your -- self.
    You don't ev -- er need help
    from no -- bo -- dy else. 

    All you got to do now,     
    ex -- press your -- self.


        What -- ev -- er you do, do it good.
        What -- ev -- er you do, do, do, Lord, do it good, oh yeah.

    It's not what you look like
    when you're do -- in' what you're do -- in'.

    It's what you're 

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 29 { \skip 1 }
    \repeat unfold 34 { \skip 1 }
    \repeat unfold 34 { \skip 1 }

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

% \book {
%   \bookOutputSuffix "in-Eb-for-C"
%     \header {
%         subtitle = "(original key)"
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
%                     \rehearsalMarkTweaksForC
%                     { 
%                         \clef bass 
%                         \bassIntro 

%                         \clef treble 
%                         \melodySong
%                     }
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
%   \bookOutputSuffix "in-E-for-C"
%     \header {
%         subtitle = "(Zoo key)"
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef e <<
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
%                     \rehearsalMarkTweaksForC
%                     { 
%                         \clef bass 
%                         \bassIntro 

%                         \clef treble 
%                         \melodySong
%                     }
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
%         subtitle = "(Zoo key)"
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose bf, c \transpose ef e <<
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
%                     \rehearsalMarkTweaksForC
%                     { 
%                         \clef bass 
%                         \transpose ef ef, \bassIntro 

%                         \clef treble 
%                         \melodySong
%                     }
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
%         subtitle = "(Zoo key)"
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef c \transpose ef e <<
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
%                     \rehearsalMarkTweaksForC
%                     { 
%                         \clef bass 
%                         \bassIntro 

%                         \clef treble 
%                         \melodySong
%                     }
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
  \bookOutputSuffix "Horn-I-in-Eb-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Bb Trumpet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \hornOneSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horn-II-in-Eb-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Bb Tenor Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose bf,, c  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \hornTwoSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horns-I-and-II-in-Eb-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Horns I & II in Bb"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \hornOneAndTwoSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horn-III-in-Eb-for-C"
    \header {
        subtitle = "(original key)"
        poet = "Trombone"
        instrumentName = \poet
    }
    \score {
        \transpose c c  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \clef bass
                    \hornThreeSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horns-I-and-II-in-E-for-Bb"
    \header {
        subtitle = "(Zoo key)"
        poet = "Horns I & II in Bb"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose ef e  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \hornOneAndTwoSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horn-III-in-E-for-C"
    \header {
        subtitle = "(Zoo key)"
        poet = "Trombone"
        instrumentName = \poet
    }
    \score {
        \transpose ef e  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \clef bass
                    \hornThreeSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Horn-III-in-E-for-Eb"
    \header {
        subtitle = "(Zoo key)"
        poet = "Baritone Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose ef e  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \hornThreeSong
                >>
            }
        >>
    }
}



