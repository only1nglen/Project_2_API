# frozen_string_literal: true

class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :shop_name, :date, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
