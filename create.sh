docker run -d --name="home-assistant" -v /home/auto/builds/home-assistant/config:/config -v /etc/localtime:/etc/localtime:ro  --net=host --restart=no homeassistant/home-assistant:2025.8.3
