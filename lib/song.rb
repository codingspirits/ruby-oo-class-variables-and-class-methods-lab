class Song 
    @@song_count = 0
    @@song_artists = []
    @@song_genres = []

    def initialize(artist, genre)
        @@song_artists = @@song_artists.push(artist)
        @@song_genres = @@song_genres.push(genre)
        @@song_count += 1
    end
    def self.count
        @@song_count
    end
    def self.artists
        @@song_artists
    end
    def self.genres
        @@song_genres
    end
    def self.genre_count
        genre_count ||= {}
        @@song_genres.each do |genre|
            if genre_count[genre] 
                genre_count[genre] +=1
            else 
                genre_count[genre]=1
            end
        end
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@song_artists.each do |artist|
            if artist_count[artist]
                artist_count[artist]+=1
            else
                artist_count[artist]=1
            end
        end
        artist_count
    end
end

Song.new("Westlife", "Country")
Song.new("Rascall Flatts", "Country")
Song.new("Green Day", "Rock")
p Song.count
p Song.artists
p Song.genres
p Song.artist_count
p Song.genre_count