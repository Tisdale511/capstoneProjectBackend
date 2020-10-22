class ChangeKeys < ActiveRecord::Migration[6.0]
  def change
    CommitteeContribution.all.each do|con|
      pac = PacInfo.find_by(committee_id: con.committee_id)
      can = CandidateInfo.find_by(candidate_id: con.candidate_id)
      if pac && can
        con.update(candidate_info_id: can.id, pac_info_id: pac.id)
      end
    end
  end
end
