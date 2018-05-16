class TrainingSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :time, :calories, :created_at, :updated_at, :plan_id
end
