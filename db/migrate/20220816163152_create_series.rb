class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :name
      t.integer :classification
      t.text :synopsis

      t.timestamps
    end
  end
end
