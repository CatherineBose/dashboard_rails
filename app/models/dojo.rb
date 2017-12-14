class Dojo < ActiveRecord::Base
    has_many :students
    validates :branch, :street, :state, :city, presence: true
    # validates :city, length: { is: 2 }
end
