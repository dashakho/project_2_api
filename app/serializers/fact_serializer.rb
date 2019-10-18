class FactSerializer < ActiveModel::Serializer
  attributes :id, :category, :level
  has_one :user
end
