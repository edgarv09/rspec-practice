require 'spec_helper'
RSpec.describe Rspec::Practice do
  it "has a version number" do
    expect(Rspec::Practice::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
