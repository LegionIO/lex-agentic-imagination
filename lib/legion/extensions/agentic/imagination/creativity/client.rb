# frozen_string_literal: true

require 'legion/extensions/agentic/imagination/creativity/helpers/constants'
require 'legion/extensions/agentic/imagination/creativity/helpers/idea'
require 'legion/extensions/agentic/imagination/creativity/helpers/idea_store'
require 'legion/extensions/agentic/imagination/creativity/helpers/creative_engine'
require 'legion/extensions/agentic/imagination/creativity/runners/creativity'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Creativity
          class Client
            include Runners::Creativity

            attr_reader :creative_engine

            def initialize(creative_engine: nil, **)
              @creative_engine = creative_engine || Helpers::CreativeEngine.new
            end
          end
        end
      end
    end
  end
end
