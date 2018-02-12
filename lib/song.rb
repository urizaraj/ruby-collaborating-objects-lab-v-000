class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    artist, name, genre = file_name.split(' - ')
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.save
    song
  end
end
