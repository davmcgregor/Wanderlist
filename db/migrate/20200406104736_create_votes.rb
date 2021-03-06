class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :route, null: false, foreign_key: true
      t.integer :upvote, default: 0

      t.timestamps
    end
  end
end
