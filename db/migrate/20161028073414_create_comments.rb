class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, length: { maximum: 200 }
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
