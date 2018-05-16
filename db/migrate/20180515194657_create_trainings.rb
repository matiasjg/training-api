class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name
      t.text :details
      t.integer :time
      t.string :video_id
      t.integer :calories

      t.timestamps
    end
  end
end
