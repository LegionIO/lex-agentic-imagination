# frozen_string_literal: true

require_relative 'imagination/version'
require_relative 'imagination/lucidity'
require_relative 'imagination/origami'
require_relative 'imagination/alchemy'
require_relative 'imagination/genesis'
require_relative 'imagination/greenhouse'
require_relative 'imagination/garden'
require_relative 'imagination/aurora'
require_relative 'imagination/volcano'
require_relative 'imagination/liminal'
require_relative 'imagination/constellation'
require_relative 'imagination/creativity'
require_relative 'imagination/dream'
require_relative 'imagination/imagery'
require_relative 'imagination/mental_simulation'
require_relative 'imagination/time_travel'
require_relative 'imagination/prospection'
require_relative 'imagination/embodied_simulation'

module Legion
  module Extensions
    module Agentic
      module Imagination
        extend Legion::Extensions::Core if Legion::Extensions.const_defined? :Core, false

        def self.remote_invocable?
          false
        end
      end
    end
  end
end
