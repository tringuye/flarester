class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # use below methods, rather than .update because of password validation
    @user.assign_attributes(allowed_update_params)
    @user.save(validate: false)
    redirect_to user_path(@user)
  end


  private

  def allowed_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :username, :password, :city_id)
  end 

  def allowed_update_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :city_id)
  end

end
