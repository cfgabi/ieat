class Restaurant < ApplicationRecord
    # cada restaurant possui vários produtos
    has_many :products

    # cada restaurante pertecene a um usuário
    belongs_to :user

    def total_of_products
        products.count
    end
end
