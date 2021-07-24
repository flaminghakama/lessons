\version "2.19.81"

structure = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \key d \minor
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \pageBreak

    \key d \major
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \key d \minor
} 

melody = \relative c' { 
    d1 
}

\book {
    \score {
        <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily" 
            %     \chordsForm 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                    \structure
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsEnglishOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
