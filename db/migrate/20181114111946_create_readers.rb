class CreateReaders < ActiveRecord::Migration[5.2]
  def change
    create_table :readers do |t|
      t.references :blog
      t.text :content

      t.timestamps
    end
  end
end
