class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end


  private

  # Redirect after login
  def after_sign_in_path_for(resource_or_scope)
    case
      when current_user.roles.where(name:"admin").exists? then companies_path
      when current_user.roles.where(name:"director").exists? then company_path(current_user.company_id)
      when current_user.roles.where(name:"manager").exists? then team_path(current_user.team_id)
      else user_requests_path(current_user.id)
    end
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
