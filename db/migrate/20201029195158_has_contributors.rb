class HasContributors < ActiveRecord::Migration[6.0]
  def change
    add_column :candidate_infos, :has_contributors, :boolean, default: true
  end
end
