feature "viewing bookmarks" do
  scenario "a user can see bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content "user can see the bookmarks"
  end
end
