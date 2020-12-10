require 'rails_helper'

describe 'Users show page' do
  before(:each) do 

    City.create(name: "Denver", state: "CO")

    visit "/"

    click_link('Create an account')
    
    fill_in 'First name', :with => 'Bob'
    fill_in 'Last name', :with => 'Evans'
    select 'Denver, CO', :from => 'user_city_id'
    fill_in 'Phone number', :with => '5556667788'
    fill_in 'Username', :with => 'bevans'
    fill_in 'Password', :with => 'test'

    click_button('Create account')   

    visit "/"

    fill_in 'Username', :with => 'bevans'
    fill_in 'Password', :with => 'test'

    click_button('Login')
  
  end

  it 'shows username' do 

    visit '/events'

    expect(page).to have_content('Welcome, Bob Evans!')

  end

  it 'shows app name' do

    visit '/events'

    expect(page).to have_content('Flarester')

  end

  it 'has link to create account' do

    visit '/events'
  
    expect(page).to have_content('Create Event')

  end

  it 'has link to view profile' do

    visit '/events'
  
    expect(page).to have_content('Profile')

  end

  it 'has link to logout' do

    visit '/events'
  
    expect(page).to have_content('Logout')

  end

  it 'logs user out and redirects to login page' do

    visit '/events'

    click_link('Logout')

    expect(page).to have_content('First time here?')

  end

end 