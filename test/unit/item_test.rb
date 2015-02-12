# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  lei        :string(255)
#  ps         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(8, 2)
#  time       :date
#  way        :string(255)
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
