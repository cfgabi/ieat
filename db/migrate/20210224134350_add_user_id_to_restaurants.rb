class AddUserIdToRestaurants < ActiveRecord::Migration[6.1]
  def change
    # adicionando uma coluna à tabel restaurants com o nome user_id e o tipo integer
    add_column :restaurants, :user_id, :integer
  end
end
