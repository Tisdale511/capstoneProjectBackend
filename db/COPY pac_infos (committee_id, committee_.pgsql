COPY pac_infos (committee_id, committee_name, committee_type, committee_designation, filing_frequency, total_receipts, transfers_from_affiliates, individual_contributions, other_committee_contributions, candidate_contributions, candidate_loans, total_loans, total_disbursements, transfers_to_affiliates, individual_refunds, committee_refunds, candidate_loan_repayments, loan_repayments, cash_on_hand_start, cash_on_hand_end, debts_owed, nonfederal_transfers_received, contributions_to_committees, independent_expenditures, party_expenditures, nonfederal_share_expenditures, coverage_end_date) from '/Users/tisdalefry/Desktop/mod5Project/capstone-backend-api/pac_info.txt' DELIMITER '|' CSV;