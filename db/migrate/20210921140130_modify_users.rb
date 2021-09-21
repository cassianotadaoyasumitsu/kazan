class ModifyUsers < ActiveRecord::Migration[6.0]
  def change
    Team.create(name:'Customer Success')
    users = User.all

    users.each do |u|
      u.team_id = 1
      u.save!
    end
  end
end
