require 'spec_helper'

describe T do

  it "should handle 100ms sleep" do
    T.p
    sleep 0.1
    T.p
  end

  it "should print benchmark differences" do
    T.p msg: "hi mom"

    T.p msg: "hi dad"
  end

end