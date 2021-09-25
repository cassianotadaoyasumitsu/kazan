class CompaniesController < ApplicationController
  def index
    @companies = policy_scope(Company)
    authorize @companies
  end

  def show
    @company = Company.find(params[:id])
    authorize @company
    @requests = policy_scope(Request)
    @users = policy_scope(User)
  end

  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    authorize @company
    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
    authorize @company
  end

  def update
    @company = Company.find(params[:id])
    authorize @company
    if @company.update(company_params)
      redirect_to company_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    authorize @company
    @company.destroy
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(
    :name,
    :owner,
    :phone,
    :email,
    :address
    )
  end
end
