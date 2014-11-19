class User < ActiveRecord::Base
  has_many :achievements
  has_many :teams
  has_many :projects, through: :teams
end