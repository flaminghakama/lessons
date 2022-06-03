\layout { 
    indent = 1.00\cm
    short-indent = 0.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
        \omit BarNumber    
        \override Glissando.minimum-length = #3
        \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando.thickness = #1.8
        \override Glissando.style = #'zigzag
        %\override StringNumber.stencil = ##f
    }
    \context { 
        \Staff 
        \RemoveAllEmptyStaves 
   }
    \context { 
        \DrumStaff 
        \RemoveAllEmptyStaves 
   }
}


