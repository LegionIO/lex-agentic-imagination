# lex-agentic-imagination

**Parent**: `/Users/miverso2/rubymine/legion/extensions-agentic/CLAUDE.md`

## What Is This Gem?

Domain consolidation gem for imagination, creativity, and offline simulation. Bundles 17 source extensions into one loadable unit under `Legion::Extensions::Agentic::Imagination`.

**Gem**: `lex-agentic-imagination`
**Version**: 0.1.0
**Namespace**: `Legion::Extensions::Agentic::Imagination`

## Sub-Modules

| Sub-Module | Source Gem | Purpose |
|---|---|---|
| `Imagination::Dream` | `lex-dream` | Autonomous eight-phase dream cycle: consolidation, association, contradiction resolution, agenda |
| `Imagination::Creativity` | `lex-creativity` | Creative ideation and novel combination generation |
| `Imagination::Imagery` | `lex-imagination` | Offline simulation and mental imagery of non-present scenarios |
| `Imagination::MentalSimulation` | `lex-mental-simulation` | Detailed mental simulation engine |
| `Imagination::TimeTravel` | `lex-mental-time-travel` | Episodic future thinking and past recollection |
| `Imagination::Prospection` | `lex-prospection` | Forward simulation for prospective thought |
| `Imagination::EmbodiedSimulation` | `lex-embodied-simulation` | Barsalou grounded cognition — sensorimotor concept simulation |
| `Imagination::Lucidity` | `lex-cognitive-lucidity` | Metacognitive clarity and lucid awareness |
| `Imagination::Origami` | `lex-cognitive-origami` | Folding and refolding knowledge structures |
| `Imagination::Alchemy` | `lex-cognitive-alchemy` | Transmutation of concepts into new forms |
| `Imagination::Genesis` | `lex-cognitive-genesis` | Concept origination and creation |
| `Imagination::Greenhouse` | `lex-cognitive-greenhouse` | Controlled growth environment for ideas |
| `Imagination::Garden` | `lex-cognitive-garden` | Seed-to-plant lifecycle — nurturing and wilting of ideas |
| `Imagination::Aurora` | `lex-cognitive-aurora` | Emergent illumination patterns |
| `Imagination::Volcano` | `lex-cognitive-volcano` | Pressure buildup and creative eruption |
| `Imagination::Liminal` | `lex-cognitive-liminal` | Threshold and transition states |
| `Imagination::Constellation` | `lex-cognitive-constellation` | Pattern recognition across dispersed concepts |

## Cross-Domain Dependencies

`Imagination::Dream` requires `lex-memory`, `lex-identity`, `lex-emotion`, and `lex-tick` at runtime. These are specified as path dependencies in the development Gemfile and as runtime dependencies in the gemspec.

## Actors

- `Imagination::Dream::Actors::DreamCycle` — runs every 300s, executes `execute_dream_cycle`

## Tick Integration

Dream phases map to `dormant_active` mode tick phases:
`memory_audit` → `association_walk` → `contradiction_resolution` → `identity_entropy_check` → `agenda_formation` → `consolidation_commit` → `dream_reflection` → `dream_narration`

## Development

```bash
bundle install   # includes path deps: lex-memory, lex-identity, lex-emotion, lex-tick
bundle exec rspec        # 1887 examples, 0 failures
bundle exec rubocop      # 0 offenses
```
