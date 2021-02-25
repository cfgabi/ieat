class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    # adicionando uma coluna na tabela users com o nome role e o tipo integer
    add_column :users, :role, :integer
  end
end
