# 🚀 Despliegue de n8n en Railway para MÜLLBLUE

## 📋 Requisitos Previos

- ✅ Cuenta en [Railway](https://railway.app)
- ✅ Cuenta en [GitHub](https://github.com)
- ✅ Token de acceso de Meta for Developers
- ✅ Phone Number ID de WhatsApp

## 🚀 Pasos para Desplegar

### 1. Preparar el Repositorio

1. **Hacer commit de los archivos:**
   ```bash
   git add railway.json .railwayignore
   git commit -m "Configuración para Railway"
   git push origin main
   ```

### 2. Crear Proyecto en Railway

1. **Ir a [Railway](https://railway.app)**
2. **"New Project"** → **"Deploy from GitHub repo"**
3. **Seleccionar tu repositorio** de n8n
4. **Branch:** `main`

### 3. Configurar Base de Datos

1. **En tu proyecto Railway:**
   - **"New"** → **"Database"** → **"PostgreSQL"**
   - **Nombre:** `mullblue-db`

2. **Variables de entorno automáticas:**
   - Railway configurará automáticamente las variables de base de datos

### 4. Configurar Variables de Entorno

En tu servicio n8n, configurar:

```bash
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=mullblue2025
N8N_ENCRYPTION_KEY=mullblue-encryption-key-2025
```

### 5. Desplegar

1. **Railway detectará** el `railway.json`
2. **Build automático** usando Dockerfile
3. **Deploy automático** con healthcheck

## 🔗 URLs Después del Despliegue

- **n8n Dashboard:** `https://tu-app.railway.app`
- **Webhook URL:** `https://tu-app.railway.app/webhook/mullblue`
- **Usuario:** `admin`
- **Contraseña:** `mullblue2025`

## 📱 Configurar Meta for Developers

1. **Webhook URL:** `https://tu-app.railway.app/webhook/mullblue`
2. **Verify Token:** `mullblue_webhook_2025`
3. **Eventos:** `messages`, `messaging_postbacks`

## 🔧 Troubleshooting

### Si el build falla:
- Verificar que el Dockerfile existe en `docker/images/n8n/`
- Verificar que las variables de entorno estén configuradas

### Si la base de datos no conecta:
- Verificar que PostgreSQL esté creado
- Verificar que las variables de entorno de DB estén configuradas

### Si el webhook no responde:
- Verificar que n8n esté corriendo
- Verificar que el workflow esté activo
- Verificar la URL del webhook en Meta

## 📞 Soporte

- **Railway Docs:** https://docs.railway.app
- **n8n Docs:** https://docs.n8n.io
- **Meta for Developers:** https://developers.facebook.com
