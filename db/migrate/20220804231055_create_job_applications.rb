class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_join_table :jobs, :users do |t|
      t.index :job_id
      t.index :user_id
      t.boolean "status", :default =>false
      
    end
  end
end
