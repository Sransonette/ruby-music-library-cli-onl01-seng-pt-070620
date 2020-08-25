class MusicImporter 
  
  def initialize(path)
    @path = path
  end
  
  def path 
    @path 
  end 
  
  def files() 
    Dir.glob("#{@path}/*.mp3").collect do |file|
<<<<<<< HEAD
      file.gsub("#{@path}/", "")
=======
      file.gsub("./spec/fixtures/mp3s/", "")
>>>>>>> 53720174807534dd587a12285f3b1e3fd6732545
    end
  end
  
  
  def import()
    files.each do |filename|
      Song.create_from_filename(filename)
    end
  end
  
  
  
  
end 