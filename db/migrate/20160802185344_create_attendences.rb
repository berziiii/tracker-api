class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.date :day, null: false
      t.string :option, null: false
      t.text :note, null: false
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
