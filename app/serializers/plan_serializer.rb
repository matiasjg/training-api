class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :created_at, :updated_at, :trainings
end
