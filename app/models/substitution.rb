# == Schema Information
#
# Table name: substitutions
#
#  id             :integer(4)      not null, primary key
#  original_id    :integer(4)
#  alternative_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class Substitution < ActiveRecord::Base
	belongs_to :original, :class_name => "Corporation"
	belongs_to :alternative, :class_name => "Corporation"
end
