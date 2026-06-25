# Usa nginx para servir archivos estáticos
FROM nginx:alpine

# Copia la configuración de nginx (con el proxy a /api/)
COPY src/default.conf /etc/nginx/conf.d/default.conf

# Copia los archivos estáticos
COPY src/index.html /usr/share/nginx/html/
COPY src/app.js /usr/share/nginx/html/

# Expone el puerto 80
EXPOSE 80

# Nginx se ejecuta en foreground por defecto
CMD ["nginx", "-g", "daemon off;"]
