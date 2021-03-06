class Site < ActiveRecord::Base
  has_many :site_links, :dependent => :delete_all
  has_many :site_contacts
  has_one  :address
  
  belongs_to :created_by, :class_name => "User", :foreign_key => "created_by"
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :site_contacts
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255 
  validates_length_of :description, :maximum => 1000

  
end
