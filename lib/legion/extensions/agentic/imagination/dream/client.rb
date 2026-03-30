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
              @identity    = identity || (Legion::Extensions::Identity::Client.new if defined?(Legion::Extensions::Identity::Client))
              @emotion     = emotion  || (Legion::Extensions::Emotion::Client.new if defined?(Legion::Extensions::Emotion::Client))
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
