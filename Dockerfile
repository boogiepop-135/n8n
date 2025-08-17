# Dockerfile simplificado para Railway - MÜLLBLUE Chatbot
FROM n8nio/n8n:latest

# Exponer puerto
EXPOSE 5678

# Usuario no-root
USER node

# Comando de inicio
CMD ["n8n", "start"]
