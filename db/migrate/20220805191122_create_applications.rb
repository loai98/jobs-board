class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications_ do |t|
      t.integer :job_id
      t.integer :user_id
      t.boolean "status", :default =>false
      t.timestamps
    end
  end
end
