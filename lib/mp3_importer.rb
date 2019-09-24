class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end
  
  def files
    deir_files = Dir[path + "/*.mp3"]
    mp3_files = []
    dir_files.each do |file|
      mp3_files << file.split("/").last
    end
    mp3_files
  end
  
end