feature 'name display' do
  scenario 'the user fills in their name and sees a birthday message with their name' do
    Timecop.freeze(2018,12,5)
    visit '/'
    fill_in 'name', with: 'Tomas'
    fill_in 'day', with: 5
    select 'December'
    fill_in 'year', with: 2018
    click_on 'Go'
    expect(page).to have_content 'Happy Birthday Tomas!'
  end
end
