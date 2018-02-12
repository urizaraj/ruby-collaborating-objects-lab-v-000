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

  def self.find_or_create_by_name(name)
    all_artists.find { |artist| artist == name }
  end

  def self.all_artists
    @@all.map do |artist|
      artist.name
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
