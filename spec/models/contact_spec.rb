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

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
