# frozen_string_literal: true

class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :shop_name, :date, :user_id
  belongs_to :user
end
