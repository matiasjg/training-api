class UserPlanTrainingsSerializer < ActiveModel::Serializer
  attributes :plan_id, :training, :created_at, :updated_at
end
