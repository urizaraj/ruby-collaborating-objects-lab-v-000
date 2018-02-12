class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir["#{self.path}/*"].map { |file_name| file_name.split('/')[-1] }
  end

  def import

  end
end
