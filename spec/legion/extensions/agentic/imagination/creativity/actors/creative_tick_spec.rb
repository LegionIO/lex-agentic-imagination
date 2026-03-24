# frozen_string_literal: true

# Legion::Extensions::Actors::Every is already stubbed in spec_helper.rb
# and 'legion/extensions/actors/every' is already in $LOADED_FEATURES.
require 'legion/extensions/agentic/imagination/creativity/actors/creative_tick'

RSpec.describe Legion::Extensions::Agentic::Imagination::Creativity::Actor::CreativeTick do
  subject(:actor) { described_class.new }

  describe '#runner_class' do
    it 'returns the Creativity runner module' do
      expect(actor.runner_class).to eq(Legion::Extensions::Agentic::Imagination::Creativity::Runners::Creativity)
    end
  end

  describe '#runner_function' do
    it 'returns creative_tick' do
      expect(actor.runner_function).to eq('creative_tick')
    end
  end

  describe '#time' do
    it 'returns 600' do
      expect(actor.time).to eq(600)
    end
  end

  describe '#run_now?' do
    it 'returns false' do
      expect(actor.run_now?).to be false
    end
  end

  describe '#use_runner?' do
    it 'returns false' do
      expect(actor.use_runner?).to be false
    end
  end

  describe '#check_subtask?' do
    it 'returns false' do
      expect(actor.check_subtask?).to be false
    end
  end

  describe '#generate_task?' do
    it 'returns false' do
      expect(actor.generate_task?).to be false
    end
  end
end
