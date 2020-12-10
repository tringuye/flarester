require 'rails_helper'

describe 'Login page' do

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

    # fill_in 'Username', :with => 'bevans'
    # fill_in 'Password', :with => 'test'

    # click_button('Login')
  
  end

  it 'shows error if password is wrong' do    
    
    visit "/"

    fill_in 'Username', :with => 'bevans'
    fill_in 'Password', :with => 'wrong'

    click_button('Login')

    expect(page).to have_content('Incorrect login, please try again')

  end

  it 'shows error if no username provided' do    
    
    visit "/"

    fill_in 'Password', :with => 'test'

    click_button('Login')

    expect(page).to have_content('Incorrect login, please try again')

  end

  it 'shows error if login blank' do    
    
    visit "/"
    click_button('Login')
    expect(page).to have_content('Incorrect login, please try again')

  end

  it 'shows error if no user does not exist' do    
    
    visit "/"

    fill_in 'Username', :with => 'Who'
    fill_in 'Password', :with => 'doesntexist'

    click_button('Login')

    expect(page).to have_content('Incorrect login, please try again')

  end

end