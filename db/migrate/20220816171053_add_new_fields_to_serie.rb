class AddNewFieldsToSerie < ActiveRecord::Migration[7.0]
  def change
    add_column :series, :cats, :string
    add_column :series, :soundtrack, :text
  end
end
