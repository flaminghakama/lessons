
\bookpart {
    % No Accidentals

    \header {
        subtitle = \markup \center-column { 
            " "  
            \concat { 
                "Minor ii" 
                \raise #0.3 { \magnify #0.65 \char ##x2205 } 
                "7 - V7 - i ("
                "maj"
                %\triangle  
                "7)" 
            } 
        }
    }

    % No Accidentals
    \score {
        << 
            \new ChordNames \transpose c a { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c a {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \transpose c c, \twoFiveOneMinorTwoVersionTwo \break
                \transpose c c, \twoFiveOneMinorThreeVersionTwo \break
                \transpose c c, \twoFiveOneMinorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "A Minor"
        } 
    }

    % 1 Accidentals
    \score {
        << 
            \new ChordNames \transpose c e { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c e {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \transpose c c, \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "E Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c d { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c d {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \twoFiveOneMinorOneVersionThree \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "D Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 2 Accidentals
    \score {
        << 
            \new ChordNames \transpose c b { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c b, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                %\twoFiveOneMinorThree \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "B Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c g { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c g {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOneVersionTwo \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThreeVersionFour \break
                \transpose c c, \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "G Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 3 Accidentals
    \score {
        << 
            \new ChordNames \transpose c fs { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c fs {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThree \break
                \transpose c c, \twoFiveOneMinorFour
                \pageBreak
            }
        >>
        \header {
            piece = "F# Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        \header {
            piece = "C Minor"
        } 
        << 
            \new ChordNames \transpose c c { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "C Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 4 Accidentals
    \score {
        << 
            \new ChordNames \transpose c cs { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c cs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "C# Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }
    % \score {
    %     << 
    %         \new ChordNames \transpose c df { 
    %             \twoFiveOneMinorChordsMajorSeven
    %             \twoFiveOneMinorChords
    %             \twoFiveOneMinorChords
    %             \twoFiveOneMinorChordsMajorSeven
    %             \twoFiveOneMinorChordsMajorSeven
    %             \twoFiveOneMinorChords
    %             \twoFiveOneMinorChordsTwo
    %         }
    %         \new Staff \transpose c df {
    %             \include "ly/ily/staff-properties.ily"
    %             \twoFiveOneMinorOneVersionTwo \bar "||" \break
    %             \twoFiveOneMinorTwoVersionTwo \bar "||" \break
    %             \twoFiveOneMinorThreeVersionTwo \bar "||" \break
    %             \twoFiveOneMinorFourVersionTwo \bar "|."
    %             \pageBreak
    %         }
    %     >>
    %     \header {
    %         piece = "Db Minor, enharmonic to C# Minor (written in Db Major)"
    %         title = ""
    %         composer = ""
    %         poet = ""
    %     } 
    % }

    \score {
        << 
            \new ChordNames \transpose c f { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c f {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThree \break
                \transpose c c, \twoFiveOneMinorFour
                \pageBreak
            }
        >>
        \header {
            piece = "F Minor"
            title = ""
            composer = ""
            poet = ""
        } 
     }

    % 5 Accidentals
    \score {
        << 
            \new ChordNames \transpose c gs { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c gs {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThree \break
                \transpose c c, \twoFiveOneMinorFour
                \pageBreak
            }
        >>
        \header {
            piece = "G# Minor (also see enharmonic equivalent Ab Minor, 7 flats)"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c bf { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c bf, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "Bb Minor"
            title = ""
            composer = ""
            poet = ""
        } 
     }

    % 6 Accidentals
    \score {
        << 
            \new ChordNames \transpose c ds { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c ds {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "D# Minor (see enharmonic equivalent Eb Minor, 6 flats)"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c ef { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c ef {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "Eb Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }


    % 7 Accidentals
    \score {
        << 
            \new ChordNames \transpose c as { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c as {
                \include "ly/ily/staff-properties.ily"
                \transpose c c, \twoFiveOneMinorOne \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThree \break
                \transpose c c, \twoFiveOneMinorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "A# Minor (see enharmonic equivalent Bb Minor, 5 flats)"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c af { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c af {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionThree \break
                \transpose c c, \twoFiveOneMinorTwo \break
                \transpose c c, \twoFiveOneMinorThreeVersionTwo \break
                \transpose c c, \twoFiveOneMinorFour
                \pageBreak
            }
        >>
        \header {
            piece = "Ab Minor"
            title = ""
            composer = ""
            poet = ""
        } 
    }
}
