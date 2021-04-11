class MusicController
  MUSIC_DIR = "music"
  def get_music_list
    file_names = Dir["#{MUSIC_DIR}/*"]
    file_names = file_names.select {|element| File.file? element}
    file_names = file_names.map {|element| element[element.index("/")+1, element.length]}
    music_list = {
      "#{MUSIC_DIR}": [
        file_names
      ]
    }
    music_list.to_json
  end
end