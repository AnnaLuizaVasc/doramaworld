class AddPosterToSerie < ActiveRecord::Migration[7.0]
  def change
    add_column :series, :poster, :string
  end
end
