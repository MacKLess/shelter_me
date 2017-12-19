require 'rails_helper'

describe Cat do
  it { should validate_presence_of :name }
  it { should validate_presence_of :breed }
end
