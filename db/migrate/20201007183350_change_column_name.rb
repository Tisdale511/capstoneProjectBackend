class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column(:pac_candidate_linkages, :FEC_election_year, :fec_election_year)
  end
end
