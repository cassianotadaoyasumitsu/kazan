class RequestsController < ApplicationController
  before_action :find_user, except: [:destroy, :index]

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = @user
    if @request.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @user = @request.user_id
    @request.destroy
    redirect_to users_path(@request.user)
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def request_params
    params.require(:request).permit(:kind_of, :amount, :request_date, :request_reason)
  end
end
