class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :tipo
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
