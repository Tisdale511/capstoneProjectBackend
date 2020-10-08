class CreateCandidateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_infos do |t|
      t.string :link_to_candidate_profile_page
      t.string :candidate_name
      t.string :candidate_id
      t.string :candidate_office
      t.string :candidate_office_state
      t.string :candidate_office_district
      t.string :candidate_party_affiliation
      t.string :candidate_incumbent_challenger_open_seat
      t.string :total_receipts
      t.string :total_disbursement
      t.string :cash_on_hand_close_of_period
      t.string :debt_owed_by_committee
      t.string :coverage_end_date
      t.string :candidate_street_1
      t.string :candidate_street_2
      t.string :candidate_city
      t.string :candidate_state
      t.string :candidate_zip_code
      t.string :individual_itemized_contribution
      t.string :individual_unitemized_contribution
      t.string :individual_contribution
      t.string :other_committee_contribution
      t.string :party_committee_contribution
      t.string :candidate_contribution
      t.string :total_contribution
      t.string :transfer_from_other_authorized_committee
      t.string :candidate_loan
      t.string :other_loan
      t.string :total_loan
      t.string :offsets_to_operating_expenditure
      t.string :offsets_to_fundraising
      t.string :offsets_to_legal_accounting
      t.string :other_receipts
      t.string :operating_expenditure
      t.string :exempt_legal_accounting_disbursement
      t.string :fundraising_disbursement
      t.string :transfer_to_other_authorized_committee
      t.string :candidate_loan_repayment
      t.string :other_loan_repayment
      t.string :total_loan_repayment
      t.string :individual_refund
      t.string :party_committee_refund
      t.string :other_committee_refund
      t.string :total_contribution_refund
      t.string :other_disbursment
      t.string :net_contribution
      t.string :net_operating_expenditure
      t.string :cash_on_hand_beginning_of_period
      t.string :debt_owed_to_committee
      t.string :coverage_start_date
    end
  end
end
