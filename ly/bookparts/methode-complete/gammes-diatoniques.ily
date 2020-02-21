    \bookpart {

        \header {
            title = ""
            subtitle = "Gammes Diatoniques"
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
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
                subtitle = ""
            }
        }
    }
