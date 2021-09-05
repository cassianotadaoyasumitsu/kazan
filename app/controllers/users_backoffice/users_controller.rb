class UsersBackoffice::UsersController < UsersBackofficeController
  def index
    @users = User.all
  end
end
