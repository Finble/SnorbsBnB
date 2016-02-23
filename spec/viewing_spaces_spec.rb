feature 'Viewing spaces' do

  scenario 'I can see existing spaces on the spaces page' do
    Space.create(name: 'High Firs')

    visit '/spaces'
    expect(page.status_code).to eq 200

    within 'ul#spaces' do
      expect(page).to have_content('High Firs')
    end
  end
end

