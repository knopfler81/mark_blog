class AddConcertIdToVideo < ActiveRecord::Migration[6.0]
  def change
  	 add_reference :videos, :concert, index: true
  end
end
