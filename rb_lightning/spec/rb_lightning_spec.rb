require_relative "../lib/rb_lightning"

describe RbLightning do
  it "computes factorials correctly" do
    expect(
      RbLightning.do_run 1..2000
    ).to eq :ok
  end
end
