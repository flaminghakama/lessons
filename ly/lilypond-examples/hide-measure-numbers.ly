\version "2.22.1"

myMark = #(define-music-function
    (markText)
    (markup?)
    #{
        \once \override Score.BarNumber.stencil = ##f
        \mark #markText
    #}
)

{
    c1 1 1 1 \break
    c1 1 1 1 \break
    \myMark "A"
    c1 1 1 1 \break
    c1 1 1 1 
}