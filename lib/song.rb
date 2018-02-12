class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    name, artist = file_name.scan(/([a-zA-Z ]+) - ([a-zA-Z ]+)/)
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
  end
end
