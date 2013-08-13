class CreateCultos < ActiveRecord::Migration
  def change
    create_table :cultos do |t|
      t.date :fecha
      t.integer :asistentes

      t.timestamps
    end
  end
end
