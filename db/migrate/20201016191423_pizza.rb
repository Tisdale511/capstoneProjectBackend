class Pizza < ActiveRecord::Migration[6.0]
  def change
        create_table :pac_infos do |t|
          t.string "committee_id"
          t.string "committee_name"
          t.string "committee_type"
          t.string "committee_designation"
          t.string "filing_frequency"
          t.float "total_receipts"
          t.float "transfers_from_affiliates"
          t.float "individual_contributions"
          t.float "other_committee_contributions"
          t.float "candidate_contributions"
          t.float "candidate_loans"
          t.float "total_loans"
          t.float "total_disbursements"
          t.float "transfers_to_affiliates"
          t.float "individual_refunds"
          t.float "committee_refunds"
          t.float "candidate_loan_repayments"
          t.float "loan_repayments"
          t.float "cash_on_hand_start"
          t.float "cash_on_hand_end"
          t.float "debts_owed"
          t.float "nonfederal_transfers_received"
          t.float "contributions_to_committees"
          t.float "independent_expenditures"
          t.float "party_expenditures"
          t.float "nonfederal_share_expenditures"
          t.datetime "coverage_end_date"    
        end
      end
    end
    

