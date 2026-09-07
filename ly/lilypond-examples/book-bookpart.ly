%{ 

books and bookparts:  what are they?


To some extent we want to understand these named objects in their traditional sense

of course, subsequent usage within lilypond stretches the meaning of these objecxts 

Let's try to understand the design goal:  what parts of traditional books and bookparts are we intending, and which ones go out the window?



From the common sense perspective, a book corresponds to a bound volume.  It is the top-level entity that everything else is packaged in.

Of course, we can have sets of books like an encyclopedia, but we do not model an encyclopedia within the language.  We are content with one top-level book object, and anything more complex is managed by the user in terms of multiple books.

What is top-level about a book?  It is a bound set of pages, which in our world corresponds to an outupt file.  All the pages are the same size.  

Beyond that, there are lots of conventions for what is common across all pages, such as margins, page numbering and headers/footers, typography.  

However, these are all generally variable.  

the bookpart is generally a collection of pages that share these characteristics in common.


From a document creation perspective., and these fall on the but these are 


}%