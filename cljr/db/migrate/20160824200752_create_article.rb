class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.string :link
      t.timestamps null: false
    end
  end
end
