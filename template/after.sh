# Wait for the ollama server to start
#echo "Waiting for ollama server to open port ${port}..."
#echo "TIMING - Starting wait at: $(date)"

#if wait_until_port_used "${host}:${port}" 60; then
#  echo "Discovered ollama server listening on port ${port}!"
#  echo "TIMING - Wait ended at: $(date)"
#else
#  echo "Timed out waiting for ollama server to open port ${port}!"
#  echo "TIMING - Wait ended at: $(date)"
#  #pkill -P ${SCRIPT_PID}
#  #clean_up 1
#fi

sleep 15
