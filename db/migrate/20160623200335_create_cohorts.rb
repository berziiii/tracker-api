class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :title, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :market, null: false
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
