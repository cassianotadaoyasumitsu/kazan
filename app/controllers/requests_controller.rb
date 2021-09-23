class RequestsController < ApplicationController
  before_action :find_user, except: [:destroy, :index]

  def index
    @requests = policy_scope(Request)
  end

  def show
    @request = Request.find(current_user)
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
  end

  def request_params
    params.require(:request).permit(:name, :amount, :request_date, :request_reason, :status, :ref)
  end
end
