class CreateCurrentCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :current_carts do |t|

      t.timestamps
    end
  end
end
