class CreateComment02s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment02s do |t|
      t.text :body
      t.string :picture
      t.integer :topic02_id

      t.timestamps
    end
  end
end
