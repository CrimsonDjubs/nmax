# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Nmax::Run do
  let(:stdin_input) do
    %(
STDIN INPUT123123
asdasd 1231 32324 2324
asdasdas 232123 s35
sdfsdf 3435 gdfg45 sd35356
    )
  end

  it 'return message if no file' do
    # result = described_class.new(numbers_count: 5).call
    expect { described_class.new(numbers_count: 5).call }.to output("no file present\n").to_stdout
  end

  describe do
    let(:stdout) do
      %(Max 5 numbers
3435
32324
35356
123123
232123
)
    end

    it 'return max 5 numbers' do
      expect_any_instance_of(described_class).to receive(:stdin).and_return(StringIO.new(stdin_input))
      expect do
        described_class.new(numbers_count: 5).call
      end.to output(stdout).to_stdout
    end
  end
end
