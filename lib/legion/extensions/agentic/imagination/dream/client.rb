# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Dream
          class Client
            include Runners::DreamCycle

            attr_reader :dream_store

            def initialize(memory: nil, identity: nil, emotion: nil, **)
              @memory      = memory   || (if defined?(Legion::Extensions::Agentic::Memory::Trace::Client)
                                            Legion::Extensions::Agentic::Memory::Trace::Client.new
                                          end)
              @identity    = identity || (if defined?(Legion::Extensions::Agentic::Self::Identity::Client)
                                            Legion::Extensions::Agentic::Self::Identity::Client.new
                                          end)
              @emotion     = emotion  || (if defined?(Legion::Extensions::Agentic::Affect::Emotion::Client)
                                            Legion::Extensions::Agentic::Affect::Emotion::Client.new
                                          end)
              @dream_store = Helpers::DreamStore.new
              @phase_data  = {}
            end

            private

            attr_reader :memory, :identity, :emotion, :phase_data
          end
        end
      end
    end
  end
end
