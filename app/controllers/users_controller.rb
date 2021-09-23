class UsersController < ApplicationController

  def index
    @users = policy_scope(User)
    @requests = policy_scope(Request)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to user_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(
    :name,
    :furigana,
    :address,
    :phone,
    :factory,
    :job_exp,
    :pay_number,
    :started_date,
    :licence1,
    :healthy_exam,
    :drive_licence,
    :drive_licence_date,
    :document,
    :document_date,
    :passport,
    :passport_date,
    :company_id,
    :ref
    )
  end
end
