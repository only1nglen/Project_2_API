class CreatePlacesToGos < ActiveRecord::Migration[5.2]
  def change
    create_table :places_to_gos do |t|
      t.string :name

      t.timestamps
    end
  end
end
