#!/bin/bash

# Use this script to run the project locally on your own machine.
# Do NOT push this file to HuggingFace — it is only for local use.

IMAGE_NAME="floxxity-docker-ttyd"
PORT="7681"

echo "Building Docker image: $IMAGE_NAME..."
docker build -t $IMAGE_NAME .

echo ""
echo "Starting ttyd container..."
docker run -d \
  --name floxxy-ttyd \
  -p $PORT:7681 \
  $IMAGE_NAME

echo ""
echo "Done! Open your browser and go to:"
echo "  http://localhost:$PORT  (local port, different from HuggingFace's 7860)"
echo ""
echo "To stop:  docker stop floxxy-ttyd"
echo "To remove: docker rm floxxy-ttyd"
echo ""
echo "Made with ❤️ by floxxy-cpu"
echo "https://github.com/floxxy-cpu"
