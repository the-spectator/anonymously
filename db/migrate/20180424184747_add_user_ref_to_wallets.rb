class AddUserRefToWallets < ActiveRecord::Migration[5.1]
  def change
    add_reference :wallets, :user, foreign_key: true
  end
end
