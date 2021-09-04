class TantoshasBackofficeController < ApplicationController
  before_action :authenticate_tantosha!
  layout "tantoshas_backoffice"

end
