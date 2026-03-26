# Changelog

## [0.1.10] - 2026-03-26

### Changed
- Migrate all memory references from `lex-memory` to `lex-agentic-memory` namespace
- Update gemspec dev dependency from `lex-memory` to `lex-agentic-memory`
- Dream cycle, client, and agenda helpers now use `Agentic::Memory::Trace` namespace

## [0.1.9] - 2026-03-25

### Added
- Cross-module integration helper (`Helpers::CrossModule`) with pipeline mapping: creativity→genesis, genesis→greenhouse, greenhouse→garden, volcano→aurora, imagery→prospection
- Historical calibration for imagery simulation: `estimate_success_likelihood` now uses `simulation_store.simulation_accuracy` as base instead of hardcoded 0.5
- 7 new actors: creativity/maintenance, embodied_simulation/maintenance, time_travel/maintenance, aurora/decay, greenhouse/maintenance, alchemy/decay, mental_simulation/maintenance
- `Alchemy::Runners::CognitiveAlchemy#decay_all` method for periodic substance decay
- Specs for all new actors and cross-module integration

### Fixed
- Cross-module spec uses `hide_const` for proper guard-path testing

## [0.1.8] - 2026-03-24

### Fixed
- Remove redundant parentheses around beginless ranges in alchemy, constellation, and garden constants (rubocop Style/RedundantParentheses)

## [0.1.7] - 2026-03-24

### Added
- Mind Growth integration in `phase_agenda_formation`: calls `MindGrowth::Runners::DreamIdeation.dream_agenda_items` when available and injects architectural gap items into the dream agenda
- `mind_growth_available?` private guard method using `defined?()` for safe optional dependency check
- Errors from MindGrowth are rescued and logged as warnings so agenda formation always continues

## [0.1.6] - 2026-03-23

### Changed
- route llm calls through pipeline when available, add caller identity for attribution

## [0.1.5] - 2026-03-23

### Added
- Dream cycle knowledge promotion phase: promotes high-novelty association discoveries and resolved contradictions to Apollo knowledge graph
- `phase_knowledge_promotion` ingests novel walks (novelty > 0.8) as associations and resolved contradictions as facts
- Dream journal now includes Phase 7: Knowledge Promotion section with promotion count
- Soft guard: phase is a no-op when lex-apollo or legion-data are not loaded

## [0.1.4] - 2026-03-22

### Changed
- Add 7 legion-* runtime dependencies to gemspec (legion-cache, legion-crypt, legion-data, legion-json, legion-logging, legion-settings, legion-transport)
- Update spec_helper to use real sub-gem helpers with Helpers::Lex including all 7 helper modules

## [0.1.3] - 2026-03-21

### Changed
- Spec suite expanded to 1897 examples (0 failures)

## [0.1.2] - 2026-03-18

### Changed
- Enforce MODES enum validation in Imagery::Runners::Imagination#simulate (returns nil for invalid mode)
- Enforce RISK_TOLERANCES enum validation in Imagery::Runners::Imagination#simulate (returns nil for invalid risk_tolerance)

## [0.1.1] - 2026-03-18

### Changed
- Enforce AURORA_TYPES enum validation in AuroraEngine#detect_aurora (returns nil for invalid type)
- Enforce DOMAINS enum validation in AuroraEngine#detect_aurora (returns nil for invalid domain)
- Enforce SPECTRAL_CLASSES enum validation in SkyEngine#discover_star (returns nil for invalid spectral_class)

## [0.1.0] - 2026-03-18

### Added
- Initial release as domain consolidation gem
- Consolidated source extensions into unified domain gem under `Legion::Extensions::Agentic::<Domain>`
- All sub-modules loaded from single entry point
- Full spec suite with zero failures
- RuboCop compliance across all files
