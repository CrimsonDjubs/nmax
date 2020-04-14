# frozen_string_literal: true

module Nmax
  class Run
    attr_reader :text, :numbers_count

    def initialize(numbers_count:)
      @text          = stdin
      @numbers_count = numbers_count.to_i
    end

    def call
      return puts('no file present') if text.tty?

      numbers = parsed_numbers.map(&:to_i).uniq.sort.last(numbers_count)
      result = numbers.prepend(message)

      puts(result)
    end

    private

    def parsed_numbers
      result = []
      until text.eof?
        line = text.readline
        line.scan(/\d+/).each_with_object(result) do |element, array|
          array << element unless array.include?(array)
        end
      end

      result
    end

    def stdin
      $stdin
    end

    def message
      "Max #{numbers_count} numbers"
    end
  end
end
