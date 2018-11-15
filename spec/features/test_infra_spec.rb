
xfeature 'test infrastructure' do
  scenario 'the tests are working' do
    visit '/'
    expect(page).to have_content 'Happy Birthday!'
  end
end
