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
        @@artists << artist
        @@genres << genre
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
        helperCount(@@genres)
    end

    def self.artist_count
        helperCount(@@artists)
    end
    
    def self.helperCount(arr)
        newHash = {}
        arr.each do |item|
            if newHash.has_key?(item)
                newHash[item] += 1
            else
                newHash[item] = 1
            end
        end 
        newHash
    end



end