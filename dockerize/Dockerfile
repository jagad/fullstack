# ------------------------------------------------------------------------------
# Pull base image.
FROM node:0.10
MAINTAINER Agung Firdaus <agung@jagad.co.id>

# ------------------------------------------------------------------------------
# Install base dependencies
RUN npm install -g grunt-cli bower

# ------------------------------------------------------------------------------
# Get fullstack source and install
RUN git clone https://github.com/jagad/fullstack.git /tmp/fullstack
RUN cd /tmp/fullstack && npm install 
RUN cd /tmp/fullstack && bower install --allow-root --config.interactive=false
RUN mv /tmp/fullstack /fullstack
WORKDIR /fullstack

# ------------------------------------------------------------------------------
# Set development Env.
ENV NODE_ENV=development

# ------------------------------------------------------------------------------
# Expose ports.
EXPOSE 3000

# ------------------------------------------------------------------------------
# Run Grunt.
CMD ["grunt", "serve", "--force"]