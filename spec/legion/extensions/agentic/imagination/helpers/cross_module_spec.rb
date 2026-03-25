# frozen_string_literal: true

require 'spec_helper'
require 'legion/extensions/agentic/imagination/helpers/cross_module'

RSpec.describe Legion::Extensions::Agentic::Imagination::Helpers::CrossModule do
  describe '.pipeline_for' do
    it 'maps creativity to genesis' do
      expect(described_class.pipeline_for(:creativity)).to eq(:genesis)
    end

    it 'maps genesis to greenhouse' do
      expect(described_class.pipeline_for(:genesis)).to eq(:greenhouse)
    end

    it 'maps greenhouse to garden' do
      expect(described_class.pipeline_for(:greenhouse)).to eq(:garden)
    end

    it 'maps volcano to aurora' do
      expect(described_class.pipeline_for(:volcano)).to eq(:aurora)
    end

    it 'maps imagery to prospection' do
      expect(described_class.pipeline_for(:imagery)).to eq(:prospection)
    end

    it 'returns nil for unmapped sources' do
      expect(described_class.pipeline_for(:dream)).to be_nil
    end
  end

  describe '.creativity_to_genesis' do
    context 'when Genesis is not defined' do
      before { hide_const('Legion::Extensions::Agentic::Imagination::Genesis::Runners::Genesis') }

      it 'returns nil' do
        result = described_class.creativity_to_genesis(idea: { content: 'test', domain: :general })
        expect(result).to be_nil
      end
    end
  end

  describe '.genesis_to_greenhouse' do
    context 'when Greenhouse is not defined' do
      before { hide_const('Legion::Extensions::Agentic::Imagination::Greenhouse::Runners::CognitiveGreenhouse') }

      it 'returns nil' do
        result = described_class.genesis_to_greenhouse(concept: { name: 'test', domain: :general })
        expect(result).to be_nil
      end
    end
  end

  describe '.volcano_to_aurora' do
    context 'when Aurora is not defined' do
      before { hide_const('Legion::Extensions::Agentic::Imagination::Aurora::Runners::CognitiveAurora') }

      it 'returns nil' do
        result = described_class.volcano_to_aurora(eruption: { domain: :general })
        expect(result).to be_nil
      end
    end
  end

  describe '.imagery_to_prospection' do
    context 'when Prospection is not defined' do
      before { hide_const('Legion::Extensions::Agentic::Imagination::Prospection::Runners::Prospection') }

      it 'returns nil' do
        result = described_class.imagery_to_prospection(simulation: { recommendation: { action: 'test', confidence: :high } })
        expect(result).to be_nil
      end
    end
  end

  describe 'PIPELINE' do
    it 'has 5 entries' do
      expect(described_class::PIPELINE.size).to eq(5)
    end

    it 'maps all source keys to symbols' do
      described_class::PIPELINE.each do |source, target|
        expect(source).to be_a(Symbol)
        expect(target).to be_a(Symbol)
      end
    end
  end
end
