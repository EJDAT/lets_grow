class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :date
      t.boolean :validated
      t.references :plant, foreign_key: true
      t.references :garden, foreign_key: true

      t.timestamps
    end
  end
end
