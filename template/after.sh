# Wait for the server to start
echo "Waiting for server to open port ${ANYTHINGLLM_INTERNAL_PORT}..."

if wait_until_port_used "${host}:${ANYTHINGLLM_INTERNAL_PORT}" 60; then
  echo "Discovered server listening on port ${ANYTHINGLLM_INTERNAL_PORT}!"
else
  echo "Timed out waiting for server to open port ${ANYTHINGLLM_INTERNAL_PORT}!"
  #pkill -P ${OLLAMA_PID}
  clean_up 1
fi

sleep 2
