# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_161710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_infos", force: :cascade do |t|
    t.string "link_to_candidate_profile_page"
    t.string "candidate_name"
    t.string "candidate_id"
    t.string "candidate_office"
    t.string "candidate_office_state"
    t.string "candidate_office_district"
    t.string "candidate_party_affiliation"
    t.string "candidate_incumbent_challenger_open_seat"
    t.string "total_receipts"
    t.string "total_disbursement"
    t.string "cash_on_hand_close_of_period"
    t.string "debt_owed_by_committee"
    t.string "coverage_end_date"
    t.string "candidate_street_1"
    t.string "candidate_street_2"
    t.string "candidate_city"
    t.string "candidate_state"
    t.string "candidate_zip_code"
    t.string "individual_itemized_contribution"
    t.string "individual_unitemized_contribution"
    t.string "individual_contribution"
    t.string "other_committee_contribution"
    t.string "party_committee_contribution"
    t.string "candidate_contribution"
    t.string "total_contribution"
    t.string "transfer_from_other_authorized_committee"
    t.string "candidate_loan"
    t.string "other_loan"
    t.string "total_loan"
    t.string "offsets_to_operating_expenditure"
    t.string "offsets_to_fundraising"
    t.string "offsets_to_legal_accounting"
    t.string "other_receipts"
    t.string "operating_expenditure"
    t.string "exempt_legal_accounting_disbursement"
    t.string "fundraising_disbursement"
    t.string "transfer_to_other_authorized_committee"
    t.string "candidate_loan_repayment"
    t.string "other_loan_repayment"
    t.string "total_loan_repayment"
    t.string "individual_refund"
    t.string "party_committee_refund"
    t.string "other_committee_refund"
    t.string "total_contribution_refund"
    t.string "other_disbursment"
    t.string "net_contribution"
    t.string "net_operating_expenditure"
    t.string "cash_on_hand_beginning_of_period"
    t.string "debt_owed_to_committee"
    t.string "coverage_start_date"
  end

  create_table "committee_contributions", force: :cascade do |t|
    t.string "committee_id"
    t.string "amendment_indicator"
    t.string "report_type"
    t.string "primary_general_indicator"
    t.string "image_number"
    t.string "transaction_type"
    t.string "entity_type"
    t.string "lender_name"
    t.string "lender_city"
    t.string "lender_state"
    t.string "lender_zipcode"
    t.string "lender_employer"
    t.string "lender_occupation"
    t.string "transaction_date"
    t.float "transaction_amount"
    t.string "other_id_number"
    t.string "candidate_id"
    t.string "transaction_id"
    t.string "report_id"
    t.string "memo_code"
    t.string "memo_text"
    t.string "fec_record_number"
    t.integer "candidate_info_id"
    t.integer "pac_info_id"
  end

  create_table "loans", force: :cascade do |t|
    t.string "candidate_id"
    t.string "committee_id"
    t.float "transaction_amount"
    t.string "transaction_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pac_candidate_linkages", force: :cascade do |t|
    t.string "candidate_id"
    t.float "candidate_election_year"
    t.float "fec_election_year"
    t.string "committee_id"
    t.string "committee_type"
    t.string "committee_designation"
    t.float "linkage_id"
  end

  create_table "pac_infos", force: :cascade do |t|
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

  create_table "tracked_politicians", force: :cascade do |t|
    t.integer "user_id"
    t.integer "candidate_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
