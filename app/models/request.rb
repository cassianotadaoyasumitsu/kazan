class Request < ApplicationRecord
  STATUS= ["applying", "approved", "canceled", "rejected"]

  belongs_to :user


  enum status: { applying: 0, approved: 1, canceled: 2, rejected: 3 }

end

