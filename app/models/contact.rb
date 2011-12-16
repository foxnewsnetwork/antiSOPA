# == Schema Information
#
# Table name: contacts
#
#  id             :integer(4)      not null, primary key
#  corporation_id :integer(4)
#  name           :string(255)
#  email          :string(255)
#  phone          :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Contact < ActiveRecord::Base
	belongs_to :corporation
end
