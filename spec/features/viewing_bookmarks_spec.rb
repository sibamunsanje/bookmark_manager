require "pg"
feature "viewing bookmarks" do
  scenario "a user can see bookmarks" do
    connection = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'

    connection.exec "INSERT INTO bookmarks (url) VALUES ('https://www.makersacademy.com');"
    connection.exec "INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');"
    connection.exec "INSERT INTO bookmarks (url) VALUES ('https://www.google.com');"

    visit('/bookmarks')

    expect(page).to have_content "https://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "https://www.google.com"
  end
end
