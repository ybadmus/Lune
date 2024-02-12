# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  is_deleted :boolean          default(FALSE), not null
#  movie      :string(255)      not null
#  review     :text(65535)
#  stars      :integer          default(0)
#  user       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
  include DestroyRecord

  validates :movie, :review, presence: true
end
