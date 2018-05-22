class CreateUserPlanTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plan_trainings do |t|
      t.references :user, foreign_key: true
      t.references :plan, foreign_key: true
      t.references :training, foreign_key: true

      t.timestamps
    end
  end
end
