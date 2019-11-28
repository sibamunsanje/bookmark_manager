require 'pg'

class Bookmark
  def self.all
    if ENV["ENVIRONMENT"] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
    else
      connection = PG.connect :dbname => 'bookmark_manager', :user => 'student'
    end

    result = connection.exec "SELECT * FROM bookmarks"
    result = result.map do |bookmarks|
      bookmarks['url']
    end
    result
  end
end
