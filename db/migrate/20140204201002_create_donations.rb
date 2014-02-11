class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :charity_name
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
