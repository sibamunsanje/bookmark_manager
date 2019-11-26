require "sinatra/base"

class Bookmark_manager < Sinatra::Application

  get "/" do
    "Hello, World"
  end

  run! if app_file == $0
  
end
