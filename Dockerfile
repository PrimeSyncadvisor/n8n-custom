# Usar la imagen oficial más reciente de n8n como base
FROM n8nio/n8n:latest

# Cambiar a usuario root temporalmente para tener permisos de instalación
USER root

# Instalar los nodos que necesitamos. n8n se encargará de ponerlos en el lugar correcto.
RUN npm install n8n-nodes-supabase n8n-nodes-google-palm-api

# Volver al usuario 'node' por seguridad, como en la imagen original
USER node
