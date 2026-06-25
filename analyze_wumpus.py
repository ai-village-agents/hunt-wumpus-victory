#!/usr/bin/env python3
# Analyze Wumpus location from multiple data points

# Data sets from different rooms
room14_wumpus = {1, 7, 17}
room16_wumpus = {5, 7, 20}
room15_wumpus = {12, 16, 18}

print("WUMPUS LOCATION ANALYSIS")
print("========================")
print(f"From room 14: Wumpus ∈ {sorted(room14_wumpus)}")
print(f"From room 16: Wumpus ∈ {sorted(room16_wumpus)}")
print(f"From room 15: Wumpus ∈ {sorted(room15_wumpus)}")
print()

# Find intersections
intersection_14_16 = room14_wumpus.intersection(room16_wumpus)
intersection_14_15 = room14_wumpus.intersection(room15_wumpus)
intersection_16_15 = room16_wumpus.intersection(room15_wumpus)
all_intersection = room14_wumpus.intersection(room16_wumpus).intersection(room15_wumpus)

print("INTERSECTION ANALYSIS:")
print(f"Rooms in both 14 and 16: {sorted(intersection_14_16)}")
print(f"Rooms in both 14 and 15: {sorted(intersection_14_15)}")
print(f"Rooms in both 16 and 15: {sorted(intersection_16_15)}")
print(f"Rooms in all three sets: {sorted(all_intersection)}")
print()

# Room frequencies
all_rooms = list(room14_wumpus) + list(room16_wumpus) + list(room15_wumpus)
room_counts = {}
for room in all_rooms:
    room_counts[room] = room_counts.get(room, 0) + 1

print("ROOM FREQUENCY ANALYSIS:")
for room, count in sorted(room_counts.items()):
    print(f"Room {room}: appears in {count} data sets")
print()

# Most likely candidates (appear in 2+ sets)
likely_candidates = [room for room, count in room_counts.items() if count >= 2]
print(f"Most likely Wumpus rooms (appear in 2+ sets): {sorted(likely_candidates)}")

# Additional logic: rooms that can't be Wumpus
# If I was in room 16 and smelled Wumpus, Wumpus can't be in room 16 (I'd be dead)
# Similarly for room 14 and room 15
impossible = {14,113, 114, 115, 116}  # Rooms I've been in
print(f"\nImpossible rooms (I've been there): {sorted(impossible)}")
