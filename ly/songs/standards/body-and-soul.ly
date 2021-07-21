\version "2.19.81"

titleLeft = "Body"
titleRight = "& Soul"
title = "Body & Soul"
composerName = "Holiday, Coltrane"
holidayComposerName = "Billie Holiday"
coltraneComposerName = "John Coltrane"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-roadmap.ily"
\include "../../../../scores/flaming-libs/flaming-barlines.ily"

%{

killPreview
rm body-and-soul*pdf
lilypond ly/songs/standards/body-and-soul*.ly
mv body-and-soul*.pdf pdf/songs/standards
for file in pdf/songs/standards/body-and-soul*pdf ; do open -a Preview $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"


% Body & Soul, Coltrane Changes

holidayStructure = {
	\key af \major
	\tempo 4=65
	\time 4/4
	\startSection "Intro"
	\fermata s1
	\repeat volta 2 {
		\startSection "A"
		\bar "[|:"
		s1*4 
		s1*2
	}
	\alternative {
		{ 
			s1 \noBreak s1 
			\bar ":|]" \noBreak
		}
		{ s1 \noBreak s1  \break }
	}

	\startSection "B"
	s1*4 \break
	s1*4 \break

	\startSection "A"
	s1*4 \break
	s1*4	
}

holidayChanges = \chordmode {
	\useFlamingChords
	f1:7.9-.13-

	bf2:m bf:m7.7+ | bf:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
	bf2:m bf:m/af | g:m7.5- c:7.9-
	
		f2:m7 bf4:m7 ef:7 | af2:6 af4:6/c f:7.9-/b |
		f2:m7 e4:m7 a:maj7 | af2:6 b4:m7 e:7 |

	a2:maj7 b:m7 | a2:/cs d4:m7 d:m7/f | a:maj7/e fs:7 b:7 e:9 | a1:maj7 |
	a2:m7 d:7 | b:min7 e:7/b | a:m7 d:7 | g4:7 gf:7 f:7 f:7.9-/a |

	bf2:m bf:m7.7+ | bf:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
	bf2:m df:7 | g:m7.5- c:7.9-/e | f:m7 bf4:m7 ef:7 | af2:6 f:7.9- |
}

holidayMelody = \relative c'' { 
	s1 
	% "A"
		s1*4 
		s1*2
			s1*2 
	        s1*2
	% "B"
	s1*4
	s1*4

	% "A"
	s1*4
	s1*4
}

melodyHoliday = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \holidayMelody
}

\header {
    title = \title
    composer = \holidayComposerName
}

\book {
  \bookOutputSuffix "Holiday"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \holidayChanges }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \holidayStructure
                    \melodyHoliday
                >>
            }
        >>
    }
}

coltraneStructure = {
	\key df \major
	\tempo 4=65
	\time 4/4
	\startSection "Intro"
	s1*4 \break
	s1*4 \break
	\repeat volta 2 {
		\startSection "A"
		\bar "S[|:"
		s1*8 
		s1*7
		\toCoda
	}
	\alternative {
		{ 
			s1 
			\bar ":|]"
		}
		{ 
			s1 
			\break
		}
	}

	\startSection "B"
	s1*8
	s1*8 \break

	\startSection "A"
	s1*8
	s1*8	
	\bar "||"
}

coltraneCodaStructure = {
	\key df \major
	\fermata s1	\bar "||"
	\fermata s1	\bar "||"
	s2 \fermata	s \bar "||"
	s2 s2 \fermata	\bar "||"
	s1*5 \bar "||"
	\fermata s1 \bar "|."
}

coltraneIntroChanges = \chordmode {
	\useFlamingChords
	ef4.:m ef:m7.7+ ef4:m7 ~ | 8 ef4.:m6 ef4:m7 ef:m7.7+ |
	ef1:min/af | s |

	ef1:min/af | s | s | s |
}

coltraneHeadChanges = \chordmode {
	\useFlamingChords
	ef1:min/af | s | s | s |
	df1:maj/af | gf:7/af | f:dim7/af | c2:m7 af |
	ef1:min/af | s | s | c2:m7.5- f:7.9- | 
	a1:maj7.5-/af | s1 | ef2:7 af:7 |

		df2:maj7 f4:m7 bf:7 ||
		df2:maj7 e4:m7 a:7 ||

	d1:maj7 | e:m7 | fs:m7 | g2:m7 c:7 |
	d2:maj f:7 | bf:maj df:7 | gf:maj a:7 | d4:maj e:m7 fs:m7 e:m7 |
	d1:m7 | g:7 | c:maj7 | e:dim7 | 
	af2:maj7 b:7 | e:maj7 g:7 | c:maj7 b:7 | f:m7 bf:7 | 

	ef1:min/af | s | s | s |
	df1:maj/af | gf:7/af | f:dim7/af | c2:m7 af |
	ef1:min/af | s | s | c2:m7.5- f:7.9- | 
	a1:maj7.5-/af | s | ef2:dim7 af:7 | df:maj7 f4:m7 bf:7 |
}

coltraneCodaChanges = \chordmode {
	\useFlamingChords
	bf1:7.9- | ef:m7 | c2:m7.5- f:7.9- | ef:m7 af:13.9- |
	cf1:maj7 | f:maj7 | a:maj7 | ef2:m7 af:7 |
	df4:maj7 gf:maj7 df:maj7/f af:9/df | df1:maj9 |
}


coltraneMelody = \relative c' {
	\repeat percent 4 { ef4. 8 ~ 4 4 ~ | 8 4. 4 4 | }

	% "A"
		s1*8 
		s1*7
			s1 
            s1
    % "B"
	s1*8
	s1*8

	% "A"
	s1*8
	s1*8	
}
\header {
    title = \title
    composer = \coltraneComposerName
}

\book {
  \bookOutputSuffix "Coltrane"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
            	\coltraneIntroChanges 
            	\coltraneHeadChanges 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \coltraneStructure
                    \coltraneMelody
                >>
            }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \coltraneCodaChanges }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \coltraneCodaStructure
                    { s1*10 }
                >>
            }
        >>
    }
}
