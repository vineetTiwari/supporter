class Req < ActiveRecord::Base

validates :name, presence: true
validates :email, presence: true 


DEPARTMENTS = ["Sales",
                "Marketing",
                "Technical"]

end
