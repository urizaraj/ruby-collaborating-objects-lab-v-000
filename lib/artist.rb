class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result = all_artists.find { |artist| artist == name }

    if result
      return result
    else
      artist = Artist.new(name)
      return artist
    end
  end

  def self.all_artists
    @@all.map do |artist|
      artist.name
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

  def add_song(song)
    self.songs << song
  end
end
