# compmusicology
Project repository for Computational Musicology course


During this week, I have discovered some methods to extend the music analysis beyond just Spotify. This has also led me to change my corpus. Since 2014, I have been keeping track of nearly every song I have listened to. I did this using a website called LastFM. Music I have listened to using desktop programs like iTunes and MusicBee are included. Spotify has a function built in that allows all the music that is played to be synched to LastFM as well. Recording a play is called scrobbling, and this way I have “scrobbled” more than 118.000 played songs since around April 2014, nearly 6 years. Using a package called “scrobbler” I have imported all my scrobbles to R, and saved it as a .csv file.  




The corpus that I chose to analyse were two playlists I have created: One playlist with songs that I used to listen to mostly in 2017, and another playlist of music that I listen to regularly right now. The songs were specifically picked to also be somewhat playable to other people. 

The older playlist is a collection of mostly indie songs that I collected throughout the years prior to creating the playlists, and consists mostly of well-known songs within that genre. The newer playlist is much broader, and contains songs of plenty more genres. There is a small degree of overlap between both playlists. The newer playlist should contain less well-known songs, since over the years I have started to dig deeper into music.

To analyse whether the newer playlist is broader, an option would be to look at the standard deviation of standard metrics: "danceability", "energy", "loudness", "speechiness", "acousticness", "instrumentalness", "liveness", "valence", "tempo”. Indeed, the standard deviation seems to be higher for most metrics, although not by a large margin. It is hard to conclude whether there is actually more variability in the newer playlist compared to the old playlist.

To analyse whether the newer playlist contains fewer well-known songs, the mean popularity of the songs within the playlist can be analysed.  It seems that the older playlist actually has a lower popularity score. Looking at the tracks individually, this can be explained: Popularity is not an absolute measure, and it seems that songs that I know are very popular (for example songs by Disclosure) score very low in popularity. This means that songs cannot be reliably compared based on this metric. Perhaps another way of analysing popularity should be used.
