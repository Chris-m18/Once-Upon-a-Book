class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :img_url
      t.string :description
      t.string :buy
      t.string :age
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true


      t.timestamps
    end
  end
end
