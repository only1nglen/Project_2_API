# frozen_string_literal: true

class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :shop_name, :date
  belongs_to :user
end
