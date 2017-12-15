class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.column :name, :string
      t.column :breed, :string
    end
  end
end
