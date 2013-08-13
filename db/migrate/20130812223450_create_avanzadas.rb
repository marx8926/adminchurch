class CreateAvanzadas < ActiveRecord::Migration
  def change
    create_table :avanzadas do |t|
      t.string :direccion
      t.string :referencia
      t.date :fecha_creacion
      t.integer :cant_miembros
      t.integer :cant_conv
      t.integer :cant_bautiz

      t.timestamps
    end
  end
end
