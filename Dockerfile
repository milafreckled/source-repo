FROM busybox:1.35

# Create a non-root user to own the httpd server files
RUN adduser -D student
USER student
WORKDIR /home/student

# Run BusyBox httpd server
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]
