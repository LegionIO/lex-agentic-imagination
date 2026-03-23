# Changelog

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
