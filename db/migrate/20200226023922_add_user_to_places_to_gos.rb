class AddUserToPlacesToGos < ActiveRecord::Migration[5.2]
  def change
    add_reference :places_to_gos, :user, foreign_key: true
  end
end
