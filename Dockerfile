FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 8080

# Nginx padrão escuta na 80, então redirecionamos para 8080
RUN sed -i 's/listen\s*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]