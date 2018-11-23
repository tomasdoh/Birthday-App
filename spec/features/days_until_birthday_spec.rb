feature 'days until birthday' do
  it 'shows the user how many days there are until their next birthday' do
    Timecop.freeze(2018,12,5)
    visit '/'
    fill_in 'name', with: 'Tomas'
    fill_in 'day', with: 4
    select 'December'
    fill_in 'year', with: 2019
    click_on 'Go'
    expect(page).to have_content 'Your next birthday will be in 364 days'
  end
end
