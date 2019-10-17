require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = Dir["#{@path}/**/*.mp3"]
    files_array.map { |filename| File.basename(filename) }
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
