#! /bin/bash

IMAGE_NAME="floxxity-docker-ttyd"
PORT = "7681"

echo "Building Docker image: $IMAGE_NAME..."
docker build -t $IMAGE_NAME .

echo ""
echo "Starting ttyd container on port $PORT..."
docker run -d \
--name floxxy-ttyd \
-p $PORT:7681 \
$IMAGE_NAME

echo ""
echo "Finished! You can access ttyd at:"
echo "http://localhost:$PORT"
echo "To stop the container, run: docker stop floxxy-ttyd"
echo "To remove the container, run: docker rm floxxy-ttyd"
echo ""
echo ""
echo "Thank you for using my code! If you have any questions or need further assistance, feel free to ask."
echo ""
echo "Made with ❤️ by floxxy-cpu"
echo "https://github.com/floxxy-cpu"