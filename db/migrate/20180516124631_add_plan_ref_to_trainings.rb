class AddPlanRefToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_reference :trainings, :plan, foreign_key: true
  end
end
