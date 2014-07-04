require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid to have original set" do
    url = Url.new
    url.original = 'http://www.google.com/'
    url.save

    expect(url).to be_valid
  end

  it "is valid to have original set" do
    url = Url.new
    url.original = 'harry'
    url.save

    expect(url).to be_valid
  end

  it "is invalid if original is not set" do
    url = Url.new
    url.save

    expect(url).to be_invalid
  end
end
