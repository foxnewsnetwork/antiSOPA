# == Schema Information
#
# Table name: politicians
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Politician < ActiveRecord::Base
end
