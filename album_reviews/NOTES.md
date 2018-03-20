Command Line Interface that allows the user to read album reviews of lesser known artists' most current release (scrape Under the Radar).

"Which album reviews would you like to read for #{current_week}"
lists "1. Artist - Album - Label - Release Date"
user input => review to read

What does a review have?
1. Subject (artist)
2. Author
3. Publication date

What does an artist have?
1. Name
2. Albums reviewed
3. Label (through albums)

Albums?
1. Artist
2. Genre
3. Label
4. Release date

Author?
1. Name
2. Reviews

#In addition to providing a list of reviews to be read (with accompanying info on album name, artist, label, realese date), I'd like to be ableto dive deeper and find all reviews by a certain author, all albums on a label, all albums by an artist#

To Do:
1. Scrape a few review sites to access from one place
2. Further expose options: list all reviews by a single author, list all reviews (over years) of artists, etc.
3. Main interface only shows the current week's reviews. Older reviews can be read through author or artist classes.
