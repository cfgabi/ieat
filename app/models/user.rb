class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # cada usuário possui um restaurante
  has_one :restaurant
  
  # definindo quais tipos de roles existem no sistema para os usuários
  # utilizando o enum, teremos as roles admin, restaurant e customer.
  enum role: [:admin, :restaurant, :customer]
end
