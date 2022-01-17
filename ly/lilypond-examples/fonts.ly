\version "2.19.83"

%{

As to your first question, 
I am not exactly sure where this font came from.

Either it came from having bought an app like 
FrameMaker, In Design, Photoshop, Illustrator, etc.

Or I got it from a free font site.

I don't recall specifically.

In general, I have been accumulating them over time, 
and have been porting my set of useful fonts from box to box.


The differnt family members of this font 
show up in the Windows fonts control panel as:

Highlander ITC TT Bold
Highlander Md ITC TT Medium
Highlander Md OS ITC TT Medium
Highlander Md SC ITC TT Medium
Highlander OS ITC TT Bold

Not sure if that clarifies anything
about the provenance of this font.


In any case, I tried clearing out the directtory with "lilypond-fonts" in it. 
Which, in my case, is called lilypond-fonts.cache-2

However, that does not appear to have an effect.  

That directory does gets repopulated when I run lilypond.

But lilypond still does not find the font, 
either by using it in the doc, 
or listing in with lilypond -dshow-available-fonts


Thanks for the help.




%}
    
pattern = \drummode {
    \time 12/8
    <>^"A"
    sn4 sn8  r sn sn  r sn4  sn4 8 | 
    <>^"B"
    sn8 [ r sn ]  r sn sn  r sn r  sn [ r sn ] \break
}

\score {
    <<
        \new DrumStaff \with {
            \override StaffSymbol.line-count = #1
        } << 
            \pattern 
        >>
    >>
    \layout { }
}

