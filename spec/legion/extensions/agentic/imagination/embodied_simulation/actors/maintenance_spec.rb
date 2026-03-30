# frozen_string_literal: true

module Legion
  module Extensions
    module Actors
      class Every # rubocop:disable Lint/EmptyClass
      end
    end
  end
end
$LOADED_FEATURES << 'legion/extensions/actors/every'

require 'legion/extensions/agentic/imagination/embodied_simulation/actors/maintenance'

RSpec.describe Legion::Extensions::Agentic::Imagination::EmbodiedSimulation::Actor::Maintenance do
  subject(:actor) { described_class.new }

  it { expect(actor.runner_class).to eq(Legion::Extensions::Agentic::Imagination::EmbodiedSimulation::Runners::EmbodiedSimulation) }
  it { expect(actor.runner_function).to eq('update_embodied_simulation') }
  it { expect(actor.time).to eq(60) }
  it { expect(actor.use_runner?).to be false }
  it { expect(actor.check_subtask?).to be false }
  it { expect(actor.generate_task?).to be false }
end
