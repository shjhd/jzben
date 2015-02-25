# == Schema Information
#
# Table name: homes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Home < ActiveRecord::Base
  # attr_accessible :title, :body
end
