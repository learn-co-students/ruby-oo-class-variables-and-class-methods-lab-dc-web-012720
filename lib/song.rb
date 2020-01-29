class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    #array stores artist names
    @@genres = []
    #array stores genres

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        #increment @@count
        @@count += 1

        #increment @@genres
        @@genres << genre

        #increment @@artists
        @@artists << artist
    end

    #
    #
    # class methods
    #
    #

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
        hash = {}
        @@genres.each do |type|
            if hash[type]
                hash[type] += 1
            else
                hash[type] = 1
            end
        end

        return hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |name|
            if hash[name]
                hash[name] += 1
            else
                hash[name] = 1
            end
        end

        return hash
    end

end