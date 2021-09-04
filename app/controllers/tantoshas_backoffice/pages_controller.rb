class TantoshasBackoffice::PagesController < TantoshasBackofficeController

  def home
  end

  def index
    @tantoshas = Tantosha.all
  end
end
