# == Schema Information
#
# Table name: movies
#
#  id               :bigint           not null, primary key
#  actor            :string(255)      not null
#  average_rating   :decimal(5, 2)    default(0.0)
#  country          :string(255)      default("")
#  description      :text(65535)      not null
#  director         :string(255)      not null
#  filming_location :string(255)      default("")
#  is_deleted       :boolean          default(FALSE), not null
#  movie            :string(255)      not null
#  year             :integer          default(2024)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
