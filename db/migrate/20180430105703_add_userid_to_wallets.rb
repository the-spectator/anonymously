class AddUseridToWallets < ActiveRecord::Migration[5.1]
  def change
  	add_reference :wallets, :user, foriegn_key: true
  end
end
