class CreateCelulas < ActiveRecord::Migration
  def change
    create_table :celulas do |t|
      t.string :codigo
      t.string :anfitrion
      t.date :creacion
      t.integer :tipo
      t.string :direccion
      t.string :referencia
      t.float :latitud
      t.float :longitud
      t.boolean :activo

      t.timestamps
    end
  end
end
