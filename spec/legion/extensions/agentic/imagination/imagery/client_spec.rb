# frozen_string_literal: true

RSpec.describe Legion::Extensions::Agentic::Imagination::Imagery::Client do
  it 'creates default simulation store' do
    client = described_class.new
    expect(client.simulation_store).to be_a(Legion::Extensions::Agentic::Imagination::Imagery::Helpers::SimulationStore)
  end

  it 'accepts injected simulation store' do
    store = Legion::Extensions::Agentic::Imagination::Imagery::Helpers::SimulationStore.new
    client = described_class.new(simulation_store: store)
    expect(client.simulation_store).to equal(store)
  end

  it 'includes Imagination runner methods' do
    client = described_class.new
    expect(client).to respond_to(:simulate, :what_if, :compare,
                                 :record_actual_outcome, :imagination_stats)
  end
end
