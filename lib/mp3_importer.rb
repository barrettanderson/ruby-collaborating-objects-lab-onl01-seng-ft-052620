class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.each_child(path).map {|file| file}
  end

  def import
    self.files.each
  end

end
