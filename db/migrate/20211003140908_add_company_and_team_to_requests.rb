class AddCompanyAndTeamToRequests < ActiveRecord::Migration[6.0]
 def change
  add_reference :requests, :company, foreign_key: true
  add_reference :requests, :team, foreign_key: true

  #migrate previous data
  requests = Request.all
  requests.each do |r|

  r.company_id = r.user.company_id
  r.team_id = r.user.team_id
  r.save!
  end

 end
end
