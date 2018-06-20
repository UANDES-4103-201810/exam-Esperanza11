class CreateDeliveryInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_infos do |t|
      t.references :order, foreign_key: true
      t.integer :phone
      t.string :address1
      t.string :address2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
