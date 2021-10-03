class RequestsController < ApplicationController
  before_action :find_user, except: [:index,:destroy]

  def index
    if params[:user_id].present?
      @requests = policy_scope(Request).where(user_id: params[:user_id])
    elsif params[:team_id].present?
      @requests = policy_scope(Request).where(team_id: params[:team_id])
    elsif params[:company_id].present?
      @requests = policy_scope(Request).where(company_id: params[:company_id])
    elsif current_user.role_name == "admin"
      @requests = policy_scope(Request)
    else
      flash[:alert] = "Somthing goes wrong, please contact your tech department."
      redirect_to(root_path)
    end
  end

  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    authorize @request
    @request.user = current_user
    @request.company_id = current_user.company_id
    @request.team_id = current_user.tram

    if @request.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
   @request = Request.find(params[:id])
   authorize @request
  end

  def update
    @request = Request.find(params[:id])
    authorize @request
    @request.user = @user
    if @request.update(request_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  # def destroy
  #   @request = Request.find(params[:id])
  #   @user = @request.user_id
  #   @request.destroy
  #   redirect_to users_path(@request.user)
  # end
  # user can only change status instead of real delete.

  private

  def find_user
    @user = User.find(params[:user_id])
    authorize(@user, :new?)
  end

  def request_params
    params.require(:request).permit(:name, :amount, :request_date, :request_reason, :status, :ref, :company_id, :team_id)
  end
end
