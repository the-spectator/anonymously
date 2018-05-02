class CreateWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :wallets do |t|
      t.integer :points, default: 0

      t.timestamps

    end
  end
end
