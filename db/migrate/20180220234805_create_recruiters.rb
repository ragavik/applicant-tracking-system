class CreateRecruiters < ActiveRecord::Migration[5.1]
  def change
    create_table :recruiters do |t|
      t.string :name

      t.timestamps
      t.references :company
    end
  end
end
