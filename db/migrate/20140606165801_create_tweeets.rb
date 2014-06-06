class CreateTweeets < ActiveRecord::Migration
  def change
    create_table :tweeets do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
