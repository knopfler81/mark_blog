class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.json :images
      t.string :year
      t.string :link

      t.timestamps
    end
  end
end
