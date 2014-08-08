require 'spec_helper'

describe T do

  it "should print benchmark differences" do
    T.p msg: "hi mom"

    T.p msg: "hi dad"
  end

end