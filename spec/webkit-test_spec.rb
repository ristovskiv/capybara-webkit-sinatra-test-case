feature 'URI fragment conversion in query string', :js => true do
  scenario 'with simple script in the view', :driver => :webkit do
    visit '/webkit#something'

    expect(page).to have_text(/Capybara-webkit test/)
    expect(URI(current_url).query).to match(/fragment=something/)
  end
end
