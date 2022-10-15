require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        return @@count
    end
    
    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        genres_histogram = {}
        for i in 0..(@@genres.length()-1) do
            if !genres_histogram.key?(@@genres[i])
                genres_histogram[@@genres[i]] = 1
            elsif genres_histogram.key?(@@genres[i])
                genres_histogram[@@genres[i]] += 1
            end
        end
        return genres_histogram
    end

    def self.artist_count
        artists_histogram = {}
        for i in 0..(@@artists.length()-1) do
            if !artists_histogram.key?(@@artists[i])
                artists_histogram[@@artists[i]] = 1
            elsif artists_histogram.key?(@@artists[i])
                artists_histogram[@@artists[i]] += 1
            end
        end
        return artists_histogram
    end
end