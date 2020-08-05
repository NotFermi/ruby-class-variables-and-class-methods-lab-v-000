class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@song_name = []


    def self.count
      @@count
    end

    def initialize (name, artists, genres)
        @@count += 1
        @name = name
        @artist = artists
        @genre = genres
        @@genres << genres
        @@artists << artists
        @@song_name << name
      end

      def self.genres
        @@genres.uniq
      end
      def self.artists
        @@artists.uniq
      end

      def self.genre_count
        b = @@genres.group_by(&:itself).map { |k,v| [k, v.count] }.to_h
      end

      def self.artist_count
      a = @@artists.group_by(&:itself).map { |k,v| [k, v.count] }.to_h
      end

end
