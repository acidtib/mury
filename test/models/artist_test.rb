# == Schema Information
#
# Table name: artists
#
#  id                :integer          not null, primary key
#  name              :string
#  graph_id          :string
#  ref_id            :string
#  decade            :string
#  gender            :string
#  country_of_origin :string
#  main_genre        :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
