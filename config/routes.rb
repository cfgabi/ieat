Rails.application.routes.draw do
  # A criação do controller products gerou um método get product/index,
  # porém, parece ser mais interessante tratar o controller products
  # como um recurso na aplicação, porém com uma rota apenas para o index desse recurso.
  # Depois foram criados os métodos new e create no controller products.
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  # O Home/index foi criado com o intuito de ser a página inicial da aplicação
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
