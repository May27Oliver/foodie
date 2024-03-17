class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.datetime :date
      t.integer :food_id
      t.string :member
      t.string :references

      t.timestamps
    end
  end
end
