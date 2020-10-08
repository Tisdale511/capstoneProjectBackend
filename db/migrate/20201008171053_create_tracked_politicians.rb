class CreateTrackedPoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :tracked_politicians do |t|
      t.integer :user_id
      t.integer :candidate_info_id
      t.timestamps
    end
  end
end
