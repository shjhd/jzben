# == Schema Information
#
# Table name: shezhis
#
#  id         :integer          not null, primary key
#  lei        :string(255)
#  way        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shezhi < ActiveRecord::Base
  attr_accessible :lei, :way
end
