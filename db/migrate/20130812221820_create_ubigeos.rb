class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.string :departamento
      t.string :provincia
      t.string :distrito
      t.integer :coddepartamento
      t.integer :codprovincia
      t.integer :coddristito
      t.float :latitud
      t.float :longitud
      t.timestamps
    end
    
  end
end