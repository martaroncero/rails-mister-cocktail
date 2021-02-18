class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.text :name
      t.references :dose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
