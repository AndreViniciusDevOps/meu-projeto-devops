# Etapa 1: Usar uma imagem base leve oficial do NGINX
FROM nginx:stable-alpine

# Etapa 2: Copiar os arquivos do nosso site para dentro da imagem
# O conteúdo da pasta 'app' vai para o diretório que o NGINX usa para servir sites.
COPY ./app/ /usr/share/nginx/html

# Etapa 3: Expor a porta 80, que é a porta padrão para tráfego HTTP
EXPOSE 80

# Etapa 4: Comando para iniciar o NGINX em primeiro plano
CMD ["nginx", "-g", "daemon off;"]