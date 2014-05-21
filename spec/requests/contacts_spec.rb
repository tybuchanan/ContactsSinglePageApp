require 'spec_helper'

describe '/contacts' do
  
  before (:each) do
    @contacts = Contact.create!([{name: "Billy Bob", email: "tyler@tyler.com", number: "444-5555", imgUrl: "https://pbs.twimg.com/profile_images/2294861187/hobuk0gr3byg3vzm7m67.gif"}])
  end

  describe 'GET with JSON' do
    before (:each) do
      get '/contacts.json'
      @result = JSON.parse(response.body)
    end

    it 'returns all contact items' do
      @result.should_not be_nil
      @result.should have(1).contacts
    end

    it 'displays image' do
      @result.should have(1).contacts.imgUrl
    end

  end

end