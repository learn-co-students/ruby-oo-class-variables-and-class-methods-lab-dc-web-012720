class Song
    #! class variables
    @@count = 0
    @@artists = []
    @@genres = []

    #! variable setters and class setters
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    #! variable getters
    attr_reader :name, :artist, :genre

    #! some class variable getters
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    #! IF ELSE genres
    def self.genre_count
        genre_count = {}
        @@genres.each{|x| genre_count[x] ? genre_count[x] += 1 : genre_count[x] = 1 }
        genre_count
    end

    #! IF ELSE artist
    def self.artist_count
        artist_count = {}
        @@artists.each{|x| artist_count[x] ? artist_count[x] += 1 : artist_count[x] = 1}
        artist_count
    end

end