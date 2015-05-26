class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true, null: false, length: { minimum: 2 }
      t.string :password_digest, length: { in: 6..20 }

      t.timestamps
    end
  end
end
