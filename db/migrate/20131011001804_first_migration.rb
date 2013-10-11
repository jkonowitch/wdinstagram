class FirstMigration < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.string :author
      t.text :photo
      t.date :post_date
    end
  end

  def down
    drop_table :entries
  end
end
