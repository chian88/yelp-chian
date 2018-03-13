class CreateBusiness < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :full_name
      t.string :categories
      t.text :description
      t.timestamps
    end
  end
end
