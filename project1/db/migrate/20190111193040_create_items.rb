class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :user_name
      t.string :contact_number
      t.string :title
      t.text :description
      t.boolean :share
      t.boolean :sell
      t.integer :cost

      t.timestamps
    end
  end
end
