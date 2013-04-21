Spree::HomeController.class_eval do

  def index
    home_new = Spree::Taxon.where(:name => t('home_new')).first
    @slider_products = home_new.products.active if home_new

    home_hot = Spree::Taxon.where(:name => t('home_hot')).first
    @featured_products = home_hot.products.active if home_hot

    home_fav = Spree::Taxon.where(:name => t('home_fav')).first
    @latest_products = home_fav.products.active if home_fav
  end

end
