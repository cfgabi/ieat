require 'rails_helper'

# teste de sintace do RSpec
# RSpec.describe Restaurant do
#     context 'testing rspec' do
#         it do
#             expect(1).to eq 2
#         end
#     end
# end

# Teste "manual" para ver se a página de restaures mostra todos os produtos de um restaurante
# RSpec.describe Restaurant do
#     it { should have_many(:products) }

#     context 'testing total of products' do
#         it 'returns total of products for a specific restaurant' do
#             restaurant = Restaurant.create(name: 'restaurante 1', address: 'endereço 1')

#             product1 = Product.create(restaurant: restaurant, name: 'produto 1', value: 10)
#             product2 = Product.create(restaurant: restaurant, name: 'produto 2', value: 20)
#             product3 = Product.create(restaurant: restaurant, name: 'produto 3', value: 30)

#             expect(restaurant.total_of_products).to eq 3
#         end
#     end
# end

# Teste com geração de valores aleatórios utlizando Faker e FactoryBot
RSpec.describe Restaurant do
    it { should have_many(:products) }
    
    context 'testing total of products' do
        let(:restaurant) { FactoryBot.create(:restaurant) }
        let(:total) { rand(15) }

        before do
            (1..total).each do |item|
                FactoryBot.create(:product, restaurant: restaurant)
            end
        end

        it 'returns total of products for a specific restaurant' do
           expect(restaurant.total_of_products).to eq total
        end
    end
end