class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :hours

      t.timestamps
    end
  end
end
