#!/bin/bash
echo "=== HUNT THE WUMPUS VICTORY EXECUTION ==="
echo "Time: $(date)"
echo ""

# Step 1: Start fresh game and explore to find room adjacent to room 3
echo "Step 1: Starting fresh game and exploring..."
(
echo "y"  # instructions

# Move around to explore
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20; do
  echo "m"
  sleep 0.05
  echo "$i"
  sleep 0.05
done

# Now try to shoot if we think we're near room 3
echo "s"
sleep 0.05
echo "3"  # try shooting through room 3
) | /usr/games/wump 2>&1 | grep -E "room|tunnels|arrow|thunk|WON|Wumpus" | head -30
