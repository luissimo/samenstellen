class CreateDoubleMattressOnes < ActiveRecord::Migration[5.1]
  def change
    create_table :double_mattress_ones do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :email
      t.string :weight
      t.integer :length
      t.string :sleep_position
      t.string :body_shape
      t.string :warm_sleeping
      t.string :neck_or_back_pain
      t.string :session_id
      t.string :mattress_length
      t.string :mattress_width
      t.string :category
      t.string :comfort
      t.string :diseases

      t.timestamps
    end
  end
end
