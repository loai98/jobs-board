class Job < ApplicationRecord
    # has_and_belongs_to_many :users, join_table: "applications_", foreign_key: "job_id"
    has_and_belongs_to_many :applications_
    has_and_belongs_to_many :users, :through => :applications_

end