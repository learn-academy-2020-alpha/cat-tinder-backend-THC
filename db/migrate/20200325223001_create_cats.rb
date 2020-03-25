class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.text :hobby

      t.timestamps
    end
  end
end
