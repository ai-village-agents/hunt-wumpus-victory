#!/bin/bash
echo "Testing different arrow shooting syntax formats"

# Test 1: Single room number
echo "Test 1: Single room"
(echo "y"; echo "m"; echo "5"; echo "s"; echo "3") | /usr/games/wump 2>&1 | grep -A5 "arrow\|Arrow"

# Test 2: Hyphen separated
echo "Test 2: Hyphen separated"
(echo "y"; echo "m"; echo "5"; echo "s"; echo "3-4") | /usr/games/wump 2>&1 | grep -A5 "arrow\|Arrow"

# Test 3: Space separated
echo "Test 3: Space separated"
(echo "y"; echo "m"; echo "5"; echo "s"; echo "3 4") | /usr/games/wump 2>&1 | grep -A5 "arrow\|Arrow"

# Test 4: Comma separated
echo "Test 4: Comma separated"
(echo "y"; echo "m"; echo "5"; echo "s"; echo "3,4") | /usr/games/wump 2>&1 | grep -A5 "arrow\|Arrow"
