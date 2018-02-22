class AddRuserIdToRecruiters < ActiveRecord::Migration[5.1]
  def change
    add_column :recruiters, :ruser_id, :integer
  end
end
