# 1. Usar la imagen oficial del SDK de .NET 10 sobre Debian
FROM mcr.microsoft.com/dotnet/sdk:9.0-bookworm-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos de tu proyecto (si los tienes)
# Si solo quieres el contenedor para pruebas, puedes omitir este paso
COPY . .

# 4. Exponer un puerto (común para apps web)
EXPOSE 8080

# 5. Comando por defecto: mantener el contenedor vivo o ejecutar tu app
# En este caso, simplemente inicia una terminal interactiva
CMD ["bash"]
