class Profile < ApplicationRecord
  has_many :divesites
  has_many :dives
end
