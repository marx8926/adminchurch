class CreateIglesia < ActiveRecord::Migration
  def change
    create_table :iglesia do |t|
      t.string :direccion
      t.string :referencia
      t.date :fecha_creacion
      t.string :telefono
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
