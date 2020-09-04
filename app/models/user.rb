class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          
  # Validation
  # validates :first_name , presence: :true
  # validates :last_name , presence: :true
  has_many :venues
  # has_many :venues, class_name: 'Venue', foreign_key: 'venue_owner_id'

  def name
    return self.first_name + " " + self.last_name rescue nil
  end
end