# Dockerfile simplificado para Railway - MÜLLBLUE Chatbot
FROM n8nio/n8n:latest

# Configurar variables de entorno
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=mullblue2025
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_USER_FOLDER=/home/node/.n8n
ENV N8N_ENCRYPTION_KEY=mullblue-encryption-key-2025
ENV N8N_AI_ENABLED=true

# Exponer puerto
EXPOSE 5678

# Usuario no-root
USER node

# Comando de inicio
CMD ["n8n", "start"]
