require 'spec_helper'
require_relative '../lib/string_operations'

RSpec.describe StringOperations do
  it 'concatena duas strings' do
    result = subject.concatenate_strings('Hello, ', 'world!')
    expect(result).to eq('Hello, world!')
  end

  it 'obtém o comprimento de uma string' do
    result = subject.string_length('Ruby is fun')
    expect(result).to eq(11)
  end
end