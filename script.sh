#!/bin/bash

echo "=== Basic Linux Operations Demo ==="
echo ""

echo "1. Current directory:"
pwd
echo ""

echo "2. Directory contents:"
ls -la
echo ""

echo "3. System information:"
uname -a
echo ""

echo "4. Disk usage:"
df -h
echo ""

echo "5. Memory usage:"
free -h
echo ""

echo "6. File operations - viewing greeting.txt:"
cat greeting.txt
echo ""

echo "7. Process information:"
ps aux
echo ""

echo "8. Network information:"
ip addr show
echo ""

echo "9. Environment variables:"
env | head -10
echo ""

echo "=== Demo Complete ==="

# Keep container running for interactive exploration
echo "Container is running. You can exec into it to run more commands."
echo "Use: docker exec -it <container-id> /bin/bash"
tail -f /dev/null
