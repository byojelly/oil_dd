require "spec_helper"

RSpec.describe Oil do
  it "has a version number" do
    expect(Oil::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
