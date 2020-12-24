class CreateCar2s < ActiveRecord::Migration[6.1]
  def change
    create_table :car2s do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
