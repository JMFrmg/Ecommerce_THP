class AddUserToCarts < ActiveRecord::Migration[5.1]
  def change
    add_reference :carts, foreign_key: true
  end
end
