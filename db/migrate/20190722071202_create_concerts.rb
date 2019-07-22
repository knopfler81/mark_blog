class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :date
      t.string :city
      t.text :content
      t.string :venue
      t.json :attachments

      t.timestamps
    end
  end
end
