# == Schema Information
#
# Table name: concerts
#
#  id              :integer          not null, primary key
#  venue_id        :integer
#  on_date         :date
#  text1           :text
#  text2           :text
#  interview       :text
#  photo_status_id :integer
#  text_status_id  :integer
#  status_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ConcertTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
