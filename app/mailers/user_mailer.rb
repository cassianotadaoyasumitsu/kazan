class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user] # Instance variable => available in view
    @bcc = User.joins(:roles).where(roles: {name: [:admin, :manager]}).pluck(:email)
    mail(
      to: @user.email,
      bcc: @bcc,
      subject: "[From Kazan]A new Account is created for you by #{@user.company.name} Company.",
      )
  end

end
