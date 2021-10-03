class Request < ApplicationRecord
  STATUS = ["Applying", "Approved", "Canceled", "Rejected"]
  KIND = ["Pay Leave", "Foul", "Voucher", "Vacation", "Translation", "Documents"]
  AMOUNT = ["Not Apply", "5.000 円", "10.000 円", "15.000 円", "20.000 円"]

  belongs_to :user
  belongs_to :company
  belongs_to :team


  enum status: { applying: 0, approved: 1, canceled: 2, rejected: 3 }

end

