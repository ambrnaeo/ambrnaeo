require 'spec_helper'

describe PagesController do
  render_views


  describe "GET 'home'" do

    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Ambrnaeo | HOME")
    end

  end

  describe "GET 'contact'" do

    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Ambrnaeo | CONTACT")
    end

  end

  describe "GET 'about'" do
    
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Ambrnaeo | ABOUT")
    end
    
  end
  
  describe "authentication of vox" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    describe "for non-signed-in users" do
      
      it "should deny access to 'vox'" do
        get :vox, :id => @user
        response.should redirect_to(signin_path)
      end
      
    end
    
  end

end
