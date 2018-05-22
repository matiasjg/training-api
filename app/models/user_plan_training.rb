class UserPlanTraining < ApplicationRecord
  belongs_to :user
  belongs_to :plan
  belongs_to :training
end
