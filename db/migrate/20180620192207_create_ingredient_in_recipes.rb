class CreateIngredientInRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredient_in_recipes do |t|
      t.references :ingredient, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
