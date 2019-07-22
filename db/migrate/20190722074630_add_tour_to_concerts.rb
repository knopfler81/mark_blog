class AddTourToConcerts < ActiveRecord::Migration[6.0]
  def change
    add_reference :concerts, :tour, null: false, foreign_key: true
  end
end
