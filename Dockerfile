# ------------------------------------------------------------------------------
# Pull base image.
FROM node:0.12
MAINTAINER Agung Firdaus <agung@jagad.co.id>

# ------------------------------------------------------------------------------
# Get prerender source and install
RUN git clone https://github.com/jagad/fullstack.git /tmp/fullstack
RUN cd /tmp/fullstack && npm install && mv /tmp/fullstack /fullstack
WORKDIR /fullstack

# ------------------------------------------------------------------------------
# Set development Env.
ENV NODE_ENV=development

# ------------------------------------------------------------------------------
# Expose ports.
EXPOSE 3000

# ------------------------------------------------------------------------------
# Run Grunt.
CMD ["grunt", "serve"]