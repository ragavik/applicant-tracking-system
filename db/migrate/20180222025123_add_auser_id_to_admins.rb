class AddAuserIdToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :auser_id, :integer
  end
end
