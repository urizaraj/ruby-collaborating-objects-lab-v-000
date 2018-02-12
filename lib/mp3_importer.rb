class MP3Importer
  attr_accessor :path
  def initialize(path)
    self.path = path
  end

  def files
    Dir.entries(self.path)
  end

  def import

  end
end
