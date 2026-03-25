# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Helpers
          module CrossModule
            module_function

            def creativity_to_genesis(idea:)
              return nil unless defined?(Genesis::Runners::Genesis)

              Genesis::Runners::Genesis.plant_seed(
                raw_material: idea[:content] || idea.to_s,
                domain:       idea[:domain] || :general
              )
            end

            def genesis_to_greenhouse(concept:)
              return nil unless defined?(Greenhouse::Runners::CognitiveGreenhouse)

              Greenhouse::Runners::CognitiveGreenhouse.plant_idea(
                plant_type:   :concept,
                domain:       concept[:domain] || :general,
                content:      concept[:name] || concept.to_s,
                growth_stage: :seed
              )
            end

            def volcano_to_aurora(eruption:)
              return nil unless defined?(Aurora::Runners::CognitiveAurora)

              Aurora::Runners::CognitiveAurora.detect_aurora(
                type:                    :eruption,
                domain:                  eruption[:domain] || :general,
                contributing_subsystems: [:volcano],
                content:                 eruption.dig(:output, :content) || eruption.to_s
              )
            end

            def greenhouse_to_garden(harvest:)
              return nil unless defined?(Garden::Runners::CognitiveGarden)

              Array(harvest[:harvested]).each do |idea|
                Garden::Runners::CognitiveGarden.plant_seed(
                  plant_type: :harvested,
                  domain:     idea[:domain] || :general,
                  content:    idea[:content] || idea.to_s
                )
              end
            end

            def imagery_to_prospection(simulation:)
              return nil unless defined?(Prospection::Runners::Prospection)

              rec = simulation[:recommendation]
              return nil unless rec

              Prospection::Runners::Prospection.create_scenario(
                domain:     rec[:action].to_s,
                confidence: rec[:confidence] == :high ? 0.8 : 0.5
              )
            end

            PIPELINE = {
              creativity: :genesis,
              genesis:    :greenhouse,
              greenhouse: :garden,
              volcano:    :aurora,
              imagery:    :prospection
            }.freeze

            def pipeline_for(source)
              PIPELINE[source.to_sym]
            end
          end
        end
      end
    end
  end
end
