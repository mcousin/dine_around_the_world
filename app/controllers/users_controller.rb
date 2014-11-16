class UsersController < ActionController::Base
  protect_from_forgery
  
  
  def index
    @users = Users.all
    respond_to do |format|
      format.html # index.html.erb
      format.for_select { render :layout => false }
    end
  end
  
  def show
    @users = User.all
    @current_time = Time.now
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @user = User.new
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end      
    
end
