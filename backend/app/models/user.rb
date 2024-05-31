class User < ApplicationRecord
    #this is where I can define index, new, show, create, edit, update,  destory, 

    validates :first_name, :last_name, :email, presence: true

    def full_name
        "#{first_name} #{last_name}"
    end
end
