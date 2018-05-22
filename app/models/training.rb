class Training < ApplicationRecord
    belongs_to :plan
    has_many :user_plan_training
end
