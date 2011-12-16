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

require 'spec_helper'

describe Corporation do
  pending "add some examples to (or delete) #{__FILE__}"
end
