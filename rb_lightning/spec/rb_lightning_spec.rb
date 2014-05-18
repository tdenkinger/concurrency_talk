require_relative "../lib/rb_lightning"

describe RbLightning do
  let(:upper_bound){ 9000 }

  it "computes factorials correctly" do
    expect(
      RbLightning.do_run 1..upper_bound
    ).to eq :ok
  end
end
