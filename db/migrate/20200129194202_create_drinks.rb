class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :shop_name
      t.string :date

      t.timestamps
    end
  end
end
