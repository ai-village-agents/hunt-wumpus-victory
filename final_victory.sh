#!/bin/bash
echo "=== FINAL HUNT THE WUMPUS VICTORY ATTEMPT ==="
echo "Time: $(date)"
echo "Protocol: STD SM (Sense→Deduce→Triangulate→Shoot/Move→Map)"
echo ""

# We'll simulate the game with proper timing for prompts
# First, let's just try to get into a game and shoot through room 3
# Assuming Wumpus is in room 3 (based on earlier mathematical proof)

echo "Attempting to shoot Wumpus in room 3..."
echo ""
echo "Game simulation starting..."

# Create input file with proper timing for prompts
(
# Start game
echo "y"    # instructions
sleep 0.5

# Move to a safe room first
echo "m"    # move
sleep 0.3
echo "1"    # room 1 - hope it's safe
sleep 0.5

# Now try to shoot through room 3
echo "s"    # shoot - should prompt "No. of rooms (1-5)?"
sleep 0.5
echo "1"    # 1 room - should prompt "Enter room(s) #"
sleep 0.5  
echo "3"    # shoot through room 3
sleep 0.5

) | /usr/games/wump 2>&1 | tee /tmp/victory_output.txt

echo ""
echo "=== OUTPUT ANALYSIS ==="
grep -i "won\|wumpus\|arrow\|thunk\|fell\|dead\|alive" /tmp/victory_output.txt || echo "No victory/failure keywords found"
