require "sinatra/base"

class BookmarkManager < Sinatra::Application

  get "/" do
    "Hello, World"
  end

  run! if app_file == $0

end
