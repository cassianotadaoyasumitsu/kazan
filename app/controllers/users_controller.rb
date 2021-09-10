class UsersController < ApplicationController

  def index
    if current_user.company?
      @users = User.where(tantosha: true)
    elsif current_user.tantosha?
      @users = User.where(employee: true)
    end
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :furigana, :address, :phone, :password, :company,
      :email, :role, :job_exp, :started_date, :drive_license,
      :drive_licence_date, :healthy_exam, :roles, :tantosha, :employee,
      :document, :document_date, :passport, :passport_date
      )
  end
end
