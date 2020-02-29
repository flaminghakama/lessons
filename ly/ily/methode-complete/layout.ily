\layout { 
    indent = 2.5\cm
    short-indent = 0.65\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
        \omit BarNumber    
    }
    \context {
        \Voice
        \override Slur.height-limit = 2.0
        \override Slur.ratio = 0.30
        \override Slur.minimum-length = 2.3
        \override Slur.details.free-head-distance = 1.1
    }
}
