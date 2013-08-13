class CreateMinisterios < ActiveRecord::Migration
  def change
    create_table :ministerios do |t|
      t.string :nombre
      t.date :creacion
      t.string :descripcion

      t.timestamps
    end
  end
end
