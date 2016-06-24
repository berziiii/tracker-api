class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
