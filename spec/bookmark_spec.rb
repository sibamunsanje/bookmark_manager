describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'

      connection.exec "INSERT INTO bookmarks (url) VALUES ('https://www.makersacademy.com');"
      connection.exec "INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');"
      connection.exec "INSERT INTO bookmarks (url) VALUES ('https://www.google.com');"

      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("https://www.google.com")
    end
end
