# frozen_string_literal: true

RSpec.describe Legion::Extensions::Agentic::Imagination::Lucidity do
  it 'has a VERSION constant' do
    expect(described_class::VERSION).to match(/\d+\.\d+\.\d+/)
  end

  it 'loads the helpers namespace' do
    expect(defined?(Legion::Extensions::Agentic::Imagination::Lucidity::Helpers)).to be_truthy
  end

  it 'loads the runners namespace' do
    expect(defined?(Legion::Extensions::Agentic::Imagination::Lucidity::Runners)).to be_truthy
  end

  it 'loads the Client class' do
    expect(defined?(Legion::Extensions::Agentic::Imagination::Lucidity::Client)).to be_truthy
  end
end
