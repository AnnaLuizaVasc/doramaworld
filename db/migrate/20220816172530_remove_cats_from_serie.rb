class RemoveCatsFromSerie < ActiveRecord::Migration[7.0]
  def change
    remove_column :series, :cats, :string
  end
end
