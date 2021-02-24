class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cant_minima
      t.integer :cant_actual
      t.integer :precio
      t.boolean :activo
      t.serial :marca_id
      t.serial :rubro_id

      t.timestamps
    end
    add_foreign_key :productos, :marcas
    add_foreign_key :productos, :rubros
  end
end
