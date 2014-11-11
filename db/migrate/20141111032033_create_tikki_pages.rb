class CreateTikkiPages < ActiveRecord::Migration
  def change
    create_table :tikki_pages do |t|
      t.string :title
      t.text :body
      t.boolean :private

      t.timestamps
    end
  end
end
