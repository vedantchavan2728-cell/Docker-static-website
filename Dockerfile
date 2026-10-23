FROM httpd:2.4-alpine
# Copy all files from current directory into the Apache web root
COPY . /usr/local/apache2/htdocs/
EXPOSE 80
