Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :illustrations do
      collection do
        get :search
      end
    end
    resources :headers
    resources :downloads
    resources :albums
  end
end
