class CreateFoodies < ActiveRecord::Migration[6.0]
  def change
    create_table :foodies do |t|
      t.integer :recommender_id
      t.integer :type
      t.string :price
      t.string :integer
      t.string :url
      t.string :string

      t.timestamps
    end
  end
end
