class CreateTopic04s < ActiveRecord::Migration[5.2]
  def change
    create_table :topic04s do |t|
      t.string :title
      t.text :body
      t.string :picture

      t.timestamps
    end
  end
end
