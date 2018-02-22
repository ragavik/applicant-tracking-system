class AddUserIdToJobSeeker < ActiveRecord::Migration[5.1]
  def change
    add_column :job_seekers, :user_id, :integer
  end
end
