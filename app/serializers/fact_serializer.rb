class FactSerializer < ActiveModel::Serializer
  attributes :id, :category, :level, :user_id, :editable
  # has_one :user

  def editable
    scope == object.user
  end

end
