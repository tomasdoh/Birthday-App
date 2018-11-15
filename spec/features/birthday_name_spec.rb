feature 'name display' do
  scenario 'the user fills in their name and sees a birthday message' do
    visit '/'
    fill_in 'name', with: 'Tomas'
    fill_in 'day', with: 5
    select 'December'
    click_on 'Go'
    expect(page).to have_content 'Happy Birthday Tomas!'
  end
end
