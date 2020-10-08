class CreatePacCandidateLinkages < ActiveRecord::Migration[6.0]
  def change
    create_table :pac_candidate_linkages do |t|
      t.string :candidate_id
      t.float :candidate_election_year
      t.float :FEC_election_year
      t.string :committee_id
      t.string :committee_type
      t.string :committee_designation
      t.float :linkage_id

    end
  end
end
