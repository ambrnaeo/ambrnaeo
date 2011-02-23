class UsersController < ApplicationController
  
  def new
    @title = "Sign up"
    @user = User.new
  end

  def show
      @user = User.find(params[:id])
      @title = @user.name
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      channel = Channel.new(:name => "#{@user.name}'s channel", :image => "IMG", :description => "blah blah blah")
      if channel.save
        @user.channel = channel
      end
      programmes = Programme.find(:all)
      programmes.shuffle!
      for index in 0...programmes.length
        progposition = Progposition.new
        progposition.programme = programmes[index]
        progposition.position = index + 1
        progposition.channel = channel
        progposition.save
      end
      @user.save
      flash[:success] = "Welcome to vox"      
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
