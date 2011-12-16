# == Schema Information
#
# Table name: corporations
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  url           :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  supports_sopa :boolean(1)
#  description   :text
#

class Corporation < ActiveRecord::Base
	has_many :contacts
	has_many :substitutions, :foreign_key => "original_id", :dependent => :destroy
	has_many :alternatives, :through => :substitutions, :source => :alternative
	
	# Potentially, we could impose a reverse relationship, but we can do that later
	
	# Functions; constructs an alternative
	def alternative!(alternative)
		substitutions.create!( :alternative_id => alternative )
	end
	
	def alternative?(alternative)
		substitutions.find_by_alternative_id(alternative)
	end
	
	def unalternative!(alternative)
		substitutions.find_by_alternative_id(alternative).destroy
	end
end
