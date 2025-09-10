killPreview
rm wein-a-ramallah*pdf
lilypond ly/songs/blo/wein-a-ramallah.ly
mv wein-a-ramallah*.pdf pdf/songs/blo
for file in pdf/songs/blo/wein-a-ramallah*.pdf ; do open -a Preview $file ; done  
