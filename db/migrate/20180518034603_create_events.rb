class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :wp_user_id
      t.string :address
      t.string :message
      t.string :trx_id

      t.timestamps
    end
  end
end
