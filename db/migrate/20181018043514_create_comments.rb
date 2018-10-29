class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :picture
      t.integer :topic_id

      t.timestamps
    end
  end
end
