class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :keywords
      t.string :description
      t.string :subject
      t.string :lenguaje

      t.timestamps null: false
    end
  end
end
