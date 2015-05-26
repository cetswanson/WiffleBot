class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name, unique: true, null: false, length: { minimum: 2 }

      t.timestamps
    end
  end
end
