Rails.application.routes.draw do
  devise_for :users
  # O Home/index foi criado com o intuito de ser a página inicial da aplicação
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
