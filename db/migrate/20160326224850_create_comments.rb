class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true, foreign_key: true
      # #4 the index on the references line tells the database to index the post_id column so it can be searched efficientyly. This is always a good idea of foreign keys, and is added automatically when you generate with the references argument. 
      t.timestamps null: false
    end
  end
end
