class CreateTimeLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :time_logs do |t|
      t.string :summary
      t.time :time_spent
      t.datetime :log_date
      t.string :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
