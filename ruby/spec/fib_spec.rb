require_relative "../lib/fib"

describe Fib do
  let(:upper_bound){ 1000 }

  it "computes factorials correctly" do
    expect(
      Fib.run 1..upper_bound
    ).to eq :ok
  end
end
