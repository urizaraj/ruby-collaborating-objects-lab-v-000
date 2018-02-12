class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    artist, name = file_name.scan(/([a-zA-Z ]+) - ([a-zA-Z ]+)/)[0]
    song = self.new
    song.name = name
    song.artist = Artist.find_or_create_by_name(artist)
  end
end
