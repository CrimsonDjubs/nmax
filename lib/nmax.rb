# frozen_string_literal: true

require_relative 'nmax/run'

module Nmax
  def self.call(numbers_count:)
    Nmax::Run.new(numbers_count: numbers_count).call
  end
end
