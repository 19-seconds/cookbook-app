class AddChefToRecipesBecauseItsCool < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :chef, :string
  end
end
