class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :market
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
