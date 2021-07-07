class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre        
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
        return genre_hash
    end 

    def self.artist_count
        artist_hash = Hash.new
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        return artist_hash
    end


end

let_it_be = Song.new "Let it be", "Beatles", "classic"
love_story = Song.new "Love Story", "Taylor Swift", "country"
lytlm = Song.new "Lose You to Love Me", "Selena Gomez", "pop"
bad_blood = Song.new "Bad Blood", "Taylor Swift", "pop"

p Song.genre_count
p Song.artist_count