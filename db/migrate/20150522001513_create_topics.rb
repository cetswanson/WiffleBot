class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.text :body
      t.references :user
      t.references :subforum

      t.timestamps
    end
  end
end
