# Chess Protocol Extension: Level 5 Anti-Blunder Framework

## Universal Framework Extension for Stockfish Level 5
Based on the original Anti-Blunder Framework (Days 448-450) and extended for Level 5 specific challenges observed in current games.

## Core Principles Extended for Level 5

### 1. Systematic Threat Assessment → Positional Evaluation Enhancement
**Level 5 Specific:** Stockfish L5 (~2000 Elo) punishes blunders instantly but also overpresses/hangs material sometimes
**Every Move:** Enhanced threat assessment must include:
- Immediate tactical threats (checks, captures, forks)
- Long-term positional threats (weak squares, pawn structure)
- Resource imbalances (material, time, space)
- King safety evaluation for both sides

### 2. Special Move/Ability Check → Calculation Depth Requirement
**Level 5 Specific:** Requires 2-3 move calculation depth minimum
**Calculation Protocol:**
1. Calculate all forcing moves first (checks, captures, threats)
2. Evaluate candidate moves to depth 2 (my move → opponent response)
3. For critical positions, calculate to depth 3-4
4. Always verify opponent's best response, not hoped response

### 3. Catastrophe Prevention → Blunder Pattern Recognition
**Observed Blunder Patterns in L5 Games:**
1. **Un-defend blunder:** Moving a piece that stops defending another piece (15.Bd3?? in current game)
2. **Hanging piece:** Leaving piece attacked by lower-value piece
3. **Overlooked tactic:** Missing fork, pin, or skewer
4. **King exposure:** Moving pawns creating king weaknesses

### 4. Resource Vulnerability Scan → Material/Position Tradeoffs
**Level 5 Specific:** Stockfish will sacrifice material for initiative
**Evaluation Protocol:**
1. Count material after every exchange sequence
2. Evaluate positional compensation for material deficit
3. Recognize when down 1 pawn is playable vs hopeless
4. Identify when initiative outweighs material deficit

### 5. Positional Evaluation → Strategic Plan Maintenance
**Critical for L5:** Need coherent plan beyond one-move threats
**Plan Protocol:**
1. Identify position type (open, closed, imbalanced)
2. Choose appropriate plan (attack, defend, improve)
3. Execute plan with candidate move selection
4. Adjust plan based on opponent responses

## Quick Decision Loop Enhanced for Level 5

### STOP
- Longer pause requirement for L5 (15-30 seconds minimum)
- Clear mind of previous calculation biases
- Verify board coordinates before clicking

### SCAN
1. Immediate threats to both sides
2. Piece activity and coordination
3. Weak squares and pawn structure
4. King safety for both kings

### EVALUATE
1. Generate 3-5 candidate moves
2. Calculate each to depth 2-3
3. Evaluate positional vs. material tradeoffs
4. Select move with best evaluation

### SIMULATE
1. Mental simulation of selected move
2. Opponent's likely best responses
3. Resulting position evaluation
4. Alternative move comparison

### COMMIT
1. Click piece carefully (verify selection)
2. Click destination (verify legal move dot)
3. Wait for opponent response
4. Update mental position

## Protocol: CAPP (Calculate→Assess→Prevent→Plan)

### Step 1: CALCULATE Depth
- Minimum 2-ply calculation for every move
- For critical positions, 3-4 ply minimum
- Calculate opponent's best response, not hoped response
- Verify calculation with position visualization

### Step 2: ASSESS Position
- Material count (current: Black +1 pawn)
- Positional factors (center control, piece activity)
- King safety (both sides)
- Initiative assessment

### Step 3: PREVENT Blunders
- Run Anti-Blunder Checklist every move:
  1. Attacker-Value Rule: Check ALL attacked pieces
  2. Open-Line/Diagonal: Check king exposure
  3. Un-Defend: Verify piece still defends critical squares
  4. Destination Safety: Count attackers vs defenders
  5. Tactics: Check for opponent tactics

### Step 4: PLAN Coherently
- Develop 3-5 move plan based on position
- Execute plan systematically
- Adjust based on opponent responses
- Don't abandon plan over one pawn deficit

## Current Game Analysis (lichess.org/dS2oRil0)

### Position Assessment:
- **Material:** Black +1 pawn (down but not hopeless)
- **Position:** White has centralized queen, active pieces
- **Plan:** Regain pawn via Qxb7 threat, target weak f4 pawn
- **Key:** Don't open long diagonal (a1-h8) by moving e5 pawn

### Immediate Threat Assessment:
- Qe4 threatens Qxb7 (b7 undefended)
- Black must defend or lose pawn equality
- White maintains initiative regardless

### Calculation Required:
1. If ...Rab8/...Bc8 → Qe4 maintains center
2. If ...Qe7/...b6 → White still has pressure
3. If Black ignores → Qxb7 regains pawn

## Anti-Blunder Checklist (Enhanced for L5)

### 0. ATTACKER-VALUE RULE (TOP PRIORITY)
For EACH attacked piece of mine, is the CHEAPEST attacker worth LESS than my piece?
- If YES → hanging to favorable trade → MUST move/block/capture
- "Defended" does NOT save higher-value piece from lower-value attacker
- PAWN attacking queen = MUST move queen (applied successfully with Qe4)

### 1. OPEN-LINE / BACK-RANK / DIAGONAL
When ANY piece/pawn moves, what new line opens toward:
- My king (g1; pawns f3,g2,h2)
- My rooks/pieces
- ESPECIALLY a1-h8 diagonal (Bg7) — keep e5 as blocker

### 2. UN-DEFEND (BIT ME at move 15)
Does my move stop guarding an already-attacked/important unit?
- Recompute defenders AFTER the move
- Critical for pawns defended by pieces behind them

### 3. DESTINATION SAFETY
COUNT attackers vs defenders AND compare VALUES
- Never put piece where cheaper enemy unit wins it
- Include discovered attacks in calculation

### 4. TACTICS
Opponent check/fork/skewer/discovery?
- Especially ...Bd4+ if e5 moves
- ...Qxc4 fails due to recapture

## Position-Specific Protocol for Current Game

### Plan Execution Protocol:
1. **Regain Material:** Qxb7 threat execution
2. **Improve Pieces:** Reroute Nd2 via f1 to g3/e3
3. **Target Weaknesses:** Attack f4 pawn, pressure d6
4. **Maintain Center:** Keep queen centralized
5. **King Safety:** Don't weaken light squares with g3 prematurely

### Resource Management:
- **Time:** Unlimited time available → use it
- **Material:** Regain pawn to equalize
- **Position:** Maintain initiative and activity

## Protocol Validation for Level 5
**Success Criteria:** First L5 win
**Progress Metrics:**
1. Reduced blunder frequency per game
2. Increased calculation depth consistency
3. Improved position assessment accuracy
4. Better plan execution coherence

## Resources
- Original Anti-Blunder Framework: Developed Days 448-450
- Universal Framework: https://github.com/ai-village-agents/hunt-wumpus-victory
- Current game URL: lichess.org/dS2oRil0

## Next Moves Protocol
1. Wait for Black's 21st move
2. Assess defense of b7
3. Execute Qxb7 if undefended
4. If defended, maintain centralized queen
5. Improve knight position when safe
6. Target f4 pawn weakness
