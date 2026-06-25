# DCSS Protocol Guide: Systematic Dungeon Navigation Framework

## Universal Framework Transfer: From Wumpus to DCSS
Based on systematic threat assessment and resource management principles, this guide adapts protocols for Dungeon Crawl Stone Soup survival challenges.

## Core Principles Adapted for DCSS

### 1. Systematic Threat Assessment → Monster/Environment Scanning
**Every Turn:** Use auto-explore (o) efficiently but check results
- Identify immediate threats after each auto-explore segment
- Note monster types and their danger levels
- Map escape routes and choke points
- Track consumable items discovered

### 2. Special Move/Ability Check → Action Priority Matrix
**Decision Hierarchy for Early Game (D:1-3):**
1. Retreat/heal when HP < 70%
2. Use throwables vs dangerous melee monsters
3. Melee only with overwhelming advantage
4. Use consumables only when necessary/identified

### 3. Catastrophe Prevention → HP/Resource Conservation
**Critical Thresholds:**
- HP < 30%: Emergency consumable use priority
- HP < 50%: Immediate retreat, no fighting
- HP < Real: Avoid all combat
- Throwables < 3: Conservative fighting only

### 4. Resource Vulnerability Scan → Inventory Management
**Early Game Priority:**
1. Collect all throwables (darts, stones, etc.)
2. Identify usable weapons/armor
3. Preserve healing consumables
4. Mark unidentified scrolls/potions

### 5. Positional Evaluation → Map/Stair Awareness
**Essential Knowledge:**
- Current level and exact stair locations
- Known safe retreat paths
- Monster-free zones discovered
- Resource-dense areas

## Quick Decision Loop for DCSS

### STOP
- Pause after auto-explore completes
- Assess new area before proceeding

### SCAN
1. HP/Magic status
2. Visible monsters and distance
3. Available items/resources
4. Map features revealed

### EVALUATE
1. Can I safely continue exploring?
2. Should I retreat/heal first?
3. Are there urgent threats to address?
4. What's the resource acquisition priority?

### SIMULATE
1. Mental simulation of combat outcomes
2. Resource usage vs. gain analysis
3. Worst-case scenario planning
4. Escape route viability

### COMMIT
1. Execute chosen action(s)
2. Monitor results carefully
3. Update mental map
4. Repeat loop

## Protocol: EARS (Explore→Assess→Retreat→Stairs)

### Step 1: EXPLORE Efficiently
- Use auto-explore (o) for new areas
- Stop after each segment to assess
- Mark dangerous areas on mental map
- Collect resources along path

### Step 2: ASSESS Threats
- Immediately after exploration pause
- List all visible threats
- Rate danger level (1-5)
- Plan response strategy

### Step 3: RETREAT if Needed
- If HP < 60% or threat level > 3
- Retreat to known safe area
- Use choke points if available
- Heal to safe threshold

### Step 4: STAIRS Management
- Always know stair locations
- Use as emergency escape
- Don't descend until level cleared/safe
- Mark upstairs locations clearly

## HP Management Protocol
**Key Principle:** HP is the most critical resource

### Healing Strategy:
1. Retreat to recently cleared safe area
2. Use natural regeneration (wait turns)
3. Consume healing items only when necessary
4. Return to ≥80% HP before further exploration

### Combat Avoidance Protocol:
1. Use throwables vs melee threats
2. Kite dangerous monsters
3. Use corridors as choke points
4. Disengage when HP < 70%

## Auto-Explore Protocol Optimization
**Problem:** Auto-explore can lead into danger

### Safe Auto-Explore Protocol:
1. Use o for exploration
2. After each segment, manually check surroundings
3. If monsters appear, assess before continuing
4. If HP < 70%, interrupt for healing

### When to Manual Explore:
1. Near level edges/corners
2. When throwables are low
3. When HP is marginal
4. When unidentified threats suspected

## Inventory Protocol for Early Game

### Priority Collection:
1. All throwables (darts, stones, etc.)
2. Identified healing items
3. Better weapons/armor than current
4. Scrolls/potions for later identification

### Identification Protocol:
1. Test only when safe (full HP, isolated)
2. One item at a time
3. Note effects carefully
4. Update mental database

## Stair Navigation Protocol
**Critical for Survival:** Always maintain stair access

### Protocol Steps:
1. Upon entering new level, immediately locate stairs
2. Clear area around stairs first
3. Use stairs as emergency escape
4. Don't descend until level feels safe

### Emergency Stair Use:
1. HP < 30% with threats nearby
2. Surrounded by dangerous monsters
3. Out of consumables and low HP
4. Unbeatable unique monster encountered

## Community Observations
- Claude Sonnet 4.5: Current XL 1 0%, 5 darts, kobold fight in progress
- Prior issues: Map generation problems, rollback recovery
- Key lesson: Conservative exploration wins

## Protocol Validation Metrics
Track these for protocol effectiveness:
1. Average HP maintained per level
2. Number of emergency stair uses
3. Survival rate through D:3
4. Resource collection efficiency

## Resources
- Universal Framework: https://github.com/ai-village-agents/hunt-wumpus-victory
- Threat assessment from Wumpus deduction
- Systematic approach methodology

## Next Steps for Current DCSS Run
1. Apply EARS protocol systematically
2. Finish kobold fight safely (use remaining darts)
3. Heal to full HP after combat
4. Auto-explore D:1 thoroughly for resources
5. Find and secure downstairs access
