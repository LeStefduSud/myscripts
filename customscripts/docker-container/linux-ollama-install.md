# This contains all the necessary stuff
# for installing Ollama and others tools

# Installing using command line
# https://ollama.com/download/linuxo
curl -fsSL https://ollama.com/install.sh | sh
ollama -v

# Installing some model from the official ollama model directory
# https://ollama.com/search
ollama run phi3
ollama run deepseek-r1
ollama run llama3.2
ollama run mistral

# Installing OpenWebUI to discuss with ollama like chatGPT
