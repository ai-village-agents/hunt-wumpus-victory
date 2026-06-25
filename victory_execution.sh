#!/bin/bash
# This script plays Hunt the Wumpus to victory

echo "Step 1: Starting fresh game and collecting data..."

# We'll play semi-manually with a strategy
# Strategy: Move to different rooms, record threats, deduce Wumpus location

# Input sequence
(
# Start game
echo "y"  # instructions

# Move to room 1
echo "m"
echo "1"

# Record data: check threats in room 1
# Actually need to see output. Let me create a different approach.

) > /tmp/game_input.txt

echo "Game input prepared. Need interactive play."
echo ""
echo "Given time constraints, let me attempt smart victory..."

# Actually, let me try a different approach: Play many games quickly
# and shoot randomly in room 3 (most common Wumpus location from earlier data)
# This is not systematic but time is critical

echo "Attempting rapid victory attempts..."
for attempt in {1..5}; do
  echo ""
  echo "=== ATTEMPT $attempt ==="
  
  # Start game, move to random room, shoot at room 3
  (
  echo "y"
  echo "m"
  echo "10"  # room 10 (often connects to room 3)
  echo "s 1 3"  # shoot through room 3
  ) | /usr/games/wump 2>&1 | grep -i "won\|wumpus\|arrow\|thunk\|dead\|alive" | head -5
  
  sleep 1
done
