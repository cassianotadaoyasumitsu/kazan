class TantoshasController < ApplicationController
  before_action :find_user, except: [:destroy, :index]
  def index
    @tantoshas = Tantosha.all
  end

  def show
    @tantosha = Tantosha.find(params[:id])
  end

  def new
    @tantosha = Tantosha.new
  end

  def create
    @tantosha = Tantosha.new(tantosha_params)
    @tantosha.user = @user
    if @tantosha.save
      redirect_to tantoshas_path
    else
      render :new
    end
  end

  def edit
    @tantosha = Tantosha.find(params[:id])
  end

  def update
    @tantosha = Tantosha.find(params[:id])
    if @tantosha.update(tantosha_params)
      redirect_to tantoshas_path
    else
      render :edit
    end
  end

  def destroy
    @tantosha = Tantosha.find(params[:id])
    @user = @user.tantosha_id
    @tantosha.destroy
    redirect_to tantoshas_path
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def tantosha_params
    params.require(:tantosha).permit(
      :name, :furigana, :address, :phone,
      :email, :factory, :role, :job_exp, :pay_number, :started_date,
      :licence1, :healthy_exam, :drive_licence, :drive_licence_date,
      :document, :document_date, :passport, :passport_date
      )
  end
end
