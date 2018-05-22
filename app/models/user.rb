class User < ApplicationRecord
    has_many :user_plan_training
    has_many :plans, :through => :user_plan_training
    has_many :trainings, :through => :user_plan_training
end
