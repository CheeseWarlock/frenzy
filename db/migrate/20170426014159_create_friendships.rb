class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.boolean :accepted
      t.references :first, references: :user, foreign_key: true
      t.references :second, references: :user

      t.timestamps
    end
  end
end
