class Plan < ApplicationRecord
    has_many :trainings
    has_many :user_plan_training
end
