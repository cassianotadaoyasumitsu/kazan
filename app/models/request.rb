class Request < ApplicationRecord
  STATUS = ["Applying", "Approved", "Canceled", "Rejected"]
  KIND = ["Pay Leave", "Foul", "Voucher", "Vacation", "Translation", "Documents"]
  AMOUNT = ["Not Apply", "5.000 円", "10.000 円", "15.000 円", "20.000 円"]

  belongs_to :user


  enum status: { applying: 0, approved: 1, canceled: 3, rejected: 5 }

end

