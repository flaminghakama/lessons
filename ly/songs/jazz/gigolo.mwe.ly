\version "2.24.0"

titleLeft = "The"
titleRight = "Gigolo"
titleFull = "The Gigolo"
composerName = "L. Morgan"
arranger = ""
copyright = ""


%{

killPreview ; rm gigolo.mwe*pdf ;  lilypond ly/songs/jazz/gigolo.mwe.ly  ; for file in gigolo.mwe*.pdf ; do op $file ; done 

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

    #(define fonts
        (make-pango-font-tree 
            "Marker Felt" 
             "Highlander ITC TT" 
             "LilyJAZZText"
             (/ myStaffSize 20)))
}

structure = \relative c' { 
    \time 3/4

    \partial 4
    s4

    \repeat volta 2 { 
        \bar "[|:-|"
        s2.*6 \break
        s2.*6 \break
        s2.*3
    }
    \alternative { 
        { s2. }
        { s2. \break }    
    }

    s2.*6 \break
    s2.*6 \break 
    s2.*4

    s2.*2 \break
    s2.*6 \break
    s2.*8
}

melody = \relative c'' { 
    a4 ||
    c2. c c c c c c c 
    c2. c c c c c c c | c ||

    a2. a a a a a a a | 
    a2. a a a a a a a | 

    c2. c c c c c c c 
    c2. c c c c c c c 
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 ||
    c2. | 
    ef2. | e | ef2. | e | 
    ef2. | e | ef2. | e | 
    ef2. | e | ef2. | df | 
    b2. | bf | ef | s || s ||

    bf2. | ef | bf2. | ef | 
    af2. | bf4. ef | af2. | s | 
    c2.| s | s | f |
    bf2. | s | s | s |

    ef2. | e | ef2. | e | 
    ef2. | e | ef2. | e | 
    ef2. | e | ef2. | df | 
    b2. | bf | ef | s || s ||
}

\score {
    <<
        \new ChordNames \transpose c c { 
            \chordsForm 
        }
        \new Staff 
        {
            <<
                \structure
                \melody
            >>
        }
    >>
    \layout {
        ragged-right = ##f
        ragged-last = ##f
    }
}

