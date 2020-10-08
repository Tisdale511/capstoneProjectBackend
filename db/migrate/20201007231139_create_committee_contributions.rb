class CreateCommitteeContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :committee_contributions do |t|
      t.string :committee_id
      t.string :amendment_indicator
      t.string :report_type
      t.string :primary_general_indicator
      t.string :image_number
      t.string :transaction_type
      t.string :entity_type
      t.string :lender_name
      t.string :lender_city
      t.string :lender_state
      t.string :lender_zipcode
      t.string :lender_employer
      t.string :lender_occupation
      t.string :transaction_date
      t.float :transaction_amount
      t.string :other_id_number
      t.string :candidate_id
      t.string :transaction_id
      t.string :report_id
      t.string :memo_code
      t.string :memo_text
      t.string :fec_record_number
    end
  end
end
