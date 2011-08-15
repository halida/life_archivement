class CreateArchivements < ActiveRecord::Migration
  def change
    create_table :archivements do |t|
      t.string :name
      t.text :desc
      t.references :category

      t.timestamps
    end
    add_index :archivements, :category_id
  end
end
