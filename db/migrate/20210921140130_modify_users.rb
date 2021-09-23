class ModifyUsers < ActiveRecord::Migration[6.0]
  def change
    Team.create(name:'Customer Success')
    users = User.all

    users.each do |u|
      u.team_id = Team.find_by(name: "Customer Success").id
      u.save!
    end
  end
end
