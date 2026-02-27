#!/bin/bash

echo "=============================="
echo " Docker TTYD by floxxy-cpu"
echo "=============================="
echo ""
echo "Starting ttyd on port 7860..."
echo "Open your browser and go to:"
echo "  http://localhost:7860"
echo ""
echo "Made with ❤️ by floxxy-cpu"
echo "https://github.com/floxxy-cpu"
echo ""

# -W enables write mode so you can actually type in the terminal
# --port 7860 works for both HuggingFace and local
ttyd --port 7860 -W bash
