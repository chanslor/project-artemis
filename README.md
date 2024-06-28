# Project Artemis

<div align="center">
    <img src="rocket.png" alt="Rocket Image" width="50%">
    <img src="ollama.png" alt="Ollama Image" width="10%">
</div>

# Project Artemis: Carli's Hope

## Overview
Project Artemis began as Carli's hope—a journey into the world of artificial intelligence. The goal? To create an AI named Artemis. Here's how it all came together:

### System Setup
- **Operating System:** Fedora Linux (FC40)
- **Hardware:** My gaming laptop with a single NVIDIA GPU for development

### Rocket LLM AI Model
1. First, we run the Rocket LLM AI model.
2. Next, we install open-webui to unlock a plethora of rich features.

## Setting Up OLLAMA
OLLAMA caught our attention—it's like a Docker engine, but with a twist. Here's how we set it up:

1. Download and install OLLAMA:
    ```bash
    curl -fsSL https://ollama.com/install.sh | sh
    ```

2. SystemD start up in the end.
    ```bash
    systemctl status ollama
    systemctl enable ollama
    systemctl start ollama
    ```

3. Starting the server manually for debugging:
    ```bash
    OLLAMA_HOST=192.168.1.63:11435 ollama serve
    ```

4. Verify if it's running:
    - In your browser: localhost:11434
    - Or via IP: http://172.17.0.1:11434/

### Running Rocket Model
```bash
OLLAMA_HOST=192.168.1.63:11435 ollama run chand1012/rocket
```

# Setting Up open-webui

Let's add some flair to our project with open-webui:

1. Run the container:
    ```bash
    docker run -d --network=host -e OLLAMA_API_BASE_URL=http://localhost:11434/api --name ollama-webui --restart always ollama-webui
    ```

2. Access the web interface:
    - URL: localhost:3000
    - Admin credentials: `admin@localhost` (password: a few seconds ago)

## Troubleshooting
If you encounter authentication issues, bypass them:
```bash
docker run --env WEBUI_AUTH=False -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```

Remember, Artemis is watching over us! 🌙✨

