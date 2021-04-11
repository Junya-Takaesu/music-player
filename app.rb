require "sinatra"
require "sinatra/namespace"
require "json"
require_relative "rb/loader.rb"

if development?
  require "sinatra/reloader"
else
  unless ENV["PORT"].nil?
    set :port, ENV["PORT"]
  end
end

music_controller = MusicController.new

get '/' do
  File.read(File.join('public', 'index.html'))
end

namespace "/api/v1" do

  before do
    content_type "application/json"
  end

  get "/music_list" do
    music_controller.get_music_list
  end

end