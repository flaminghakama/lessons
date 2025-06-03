killPreview
rm pdf/songs/alt/joyce-is-a-punk-rocker*
lilypond ly/songs/alt/joyce-is-a-punk-rocker.ly 
mv joyce-is-a-punk-rocker*pdf pdf/songs/alt
mv joyce-is-a-punk-rocker*midi midi
for file in pdf/songs/alt/joyce-is-a-punk-rocker*pdf ; do op $file ; done 

