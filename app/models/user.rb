# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :facts
  has_many :examples
end
