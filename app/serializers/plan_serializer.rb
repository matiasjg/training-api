class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :created_at, :updated_at, :trainings
end
