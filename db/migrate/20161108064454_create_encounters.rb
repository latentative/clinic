class CreateEncounters < ActiveRecord::Migration[5.0]
  def change
    create_table :encounters do |t|
      t.string :visit_number
      t.datetime :admitted_at
      t.datetime :discharged_at
      t.string :location
      t.integer :room
      t.integer :bed
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
