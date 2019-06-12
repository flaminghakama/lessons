
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c a {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionThree \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c e {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionThree
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c d {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c b, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFour
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c g {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c fs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFour
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c cs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFour
                \pageBreak
            }
        >>
        \header {
            piece = "C# Minor (also see enharmonic equivalent Db Minor)"
            title = ""
            composer = ""
            poet = ""
        } 
    }
    \score {
        << 
            \new ChordNames \transpose c df { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c df {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \twoFiveOneMinorOneNotes \bar "||" \break
                \twoFiveOneMinorTwoNotes \bar "||" \break
                \twoFiveOneMinorThreeNotes \bar "||" \break
                \twoFiveOneMinorFourVersionThreeNotes \bar "|."
                \pageBreak
            }
        >>
        \header {
            piece = "Db Minor, enharmonic to C# Minor (written in Db Major)"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c f { 
                \twoFiveOneMinorChordsMajorSeven
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c f {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c gs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionThree \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c bf, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFour
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c ds {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOne \break
                \twoFiveOneMinorTwo \break
                \twoFiveOneMinorThree \break
                \twoFiveOneMinorFourVersionThree
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c ef {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionTwo \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionThree
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c as {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionThree \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionTwo
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
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChords
                \twoFiveOneMinorChordsTwo
            }
            \new Staff \transpose c af {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMinorOneVersionThree \break
                \twoFiveOneMinorTwoVersionTwo \break
                \twoFiveOneMinorThreeVersionTwo \break
                \twoFiveOneMinorFourVersionFive
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
