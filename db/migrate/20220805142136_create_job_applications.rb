class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :jobsApplications do |t|
      t.integer :job_id
      t.integer :user_id
      t.boolean "status", :default =>false
    end
  end
end
