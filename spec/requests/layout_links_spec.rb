require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "HOME")
  end

  it "should have a contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "CONTACT")
  end

  it "should have a contact page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "ABOUT")
  end

  
end
