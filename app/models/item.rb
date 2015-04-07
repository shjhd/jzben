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

class Item < ActiveRecord::Base
  attr_accessible :lei, :price, :ps, :time, :way
  belongs_to :user
  validates :user_id, presence: true
  validates :price, numericality: { only_integer: true }
  validates :ps, length: { maximum: 20 }
  paginates_per 8
end
