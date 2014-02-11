class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :charity_type
      

      t.timestamps
    end
  end
end
