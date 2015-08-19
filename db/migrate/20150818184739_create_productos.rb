class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :keywords
      t.string :description
      t.string :subject
      t.string :title
      t.string :sub_title
      t.string :modelo
      t.string :altura
      t.string :incluye
      t.string :colores
      t.string :altura_min
      t.string :altura_max
      t.string :material
      t.float :precio
      t.float :descuento
      t.string :vesa
      t.string :dimensiones
      t.string :distancia
      t.string :peso
      t.string :angulo_in
      t.string :angulo_giro
      t.string :color

      t.timestamps null: false
    end
  end
end
