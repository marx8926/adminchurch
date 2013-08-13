class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :edad
      t.date :nacimiento
      t.string :dni
      t.string :ocupacion
      t.string :profesion
      t.string :estado
      t.string :dia
      t.time :hora
      t.string :invitado
      t.string :direccion
      t.string :referencia
      t.float :longitud
      t.float :latitud
      t.date :conversion

      t.timestamps
    end
  end
end
