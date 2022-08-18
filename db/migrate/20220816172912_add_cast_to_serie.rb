class AddCastToSerie < ActiveRecord::Migration[7.0]
  def change
    add_column :series, :cast, :string
  end
end
