class CreateMyTweets < ActiveRecord::Migration
  def change
    create_table :my_tweets do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
