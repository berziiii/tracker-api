class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :gender
      t.string :phone_number, null: false
      t.string :github_username, null: false, index: { unique: true }
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
