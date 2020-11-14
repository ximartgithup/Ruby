class CreateCiudads < ActiveRecord::Migration[6.0]
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.decimal :habitantes

      t.timestamps
    end
  end
end
