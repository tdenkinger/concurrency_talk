require_relative "../lib/rb_lightning"

describe RbLightning do
  it "returns the expected elements" do
    extent = 1_000_000
    expect(
      RbLightning.do_run(1..extent, lambda{|n|n**2}).last
    ).to eq extent**2
  end
end
