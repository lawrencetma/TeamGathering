class User < ActiveRecord::Base
  has_secure_password
  has_many :achievements
  has_many :teams
  has_many :projects, through: :teams
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_uniqueness_of :email, :on => :create
end