    \bookpart {

        \header {
            title = "Gammes Diatoniques"
            subtitle = ""
            composer = ""
        }
        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = ""
                    \gammesDiatoniquesOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { ""  " " }
            }
            \layout { 
                indent = 0.65\cm
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/methode-complete/staff-properties.ily"
                    \set Staff.instrumentName = "Secondes"
                    \gammesDiatoniquesSecondes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Tierces"
                    \gammesDiatoniquesTierces
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Quartes"
                    \gammesDiatoniquesQuartes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Quintes"
                    \gammesDiatoniquesQuintes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Sixtes"
                    \gammesDiatoniquesSixtes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Septièmes"
                    \gammesDiatoniquesSeptiemes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Octaves"
                    \gammesDiatoniquesOctaves
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Neuvièmes"
                    \gammesDiatoniquesNeuviemes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Dixièmes"
                    \gammesDiatoniquesDixiemes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Onzièmes"
                    \gammesDiatoniquesOnziemes
                }
            >>
            \header {
                title = ""
            }
        }

        \score {
            << 
                \include "ly/bookparts/methode-complete/score-properties.ily"
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \set Staff.instrumentName = "Douzièmes"
                    \gammesDiatoniquesDouziemes
                }
            >>
            \header {
                title = ""
            }
        }
    }
