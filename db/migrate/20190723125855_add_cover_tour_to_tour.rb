class AddCoverTourToTour < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :cover_tour, :string
  end
end
