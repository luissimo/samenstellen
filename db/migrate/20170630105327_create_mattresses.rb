class CreateMattresses < ActiveRecord::Migration[5.1]
  def change
    create_table :mattresses do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :email
      t.string :weight
      t.integer :length
      t.string :sleep_position
      t.string :body_shape
      t.string :warm_sleeping
      t.string :diseases
      t.string :size
      t.string :neck_or_back_pain

      t.timestamps
    end
  end
end
