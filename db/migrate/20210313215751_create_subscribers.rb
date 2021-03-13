class CreateSubscribers < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribers do |t|
      t.string :email, null: false
      t.string :token, null: false
      t.boolean :opted_in, default: false

      t.timestamps
    end
  end
end
