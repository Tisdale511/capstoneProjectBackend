# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CommitteeContribution.all.each do|con|
    pac = PacInfo.find_by(committee_id: con.committee_id)
    can = CandidateInfo.find_by(candidate_id: con.candidate_id)
    if pac && can
      con.update(candidate_info_id: can.id, pac_info_id: pac.id)
    end
  end