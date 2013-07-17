class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :email
      t.string :message
      t.integer :post_id

      t.timestamps
    end
  end
end
