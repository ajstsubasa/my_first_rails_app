class CreateCar3s < ActiveRecord::Migration[6.1]
  def change
    create_table :car3s do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
