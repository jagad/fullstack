# ------------------------------------------------------------------------------
# Pull base image.
FROM agungf/c9-ide
MAINTAINER Agung Firdaus <agung@jagad.co.id>

# ------------------------------------------------------------------------------
# Install base dependencies
RUN npm install -g grunt-cli bower

# ------------------------------------------------------------------------------
# Get fullstack source and install
RUN git clone https://github.com/jagad/fullstack.git /tmp/fullstack
RUN cd /tmp/fullstack && npm install 
RUN cd /tmp/fullstack && bower install --allow-root --config.interactive=false
RUN cp /tmp/fullstack/dockerize/fullstack-supervisord.conf /etc/supervisor/conf.d/ && mv /tmp/fullstack /cloud9/workspace/fullstack 
WORKDIR /cloud9/workspace/fullstack

# ------------------------------------------------------------------------------
# Set development Env.
ENV NODE_ENV=development

# ------------------------------------------------------------------------------
# Expose ports.
EXPOSE 3000

# ------------------------------------------------------------------------------
# Start supervisor, define default command.
ENTRYPOINT /usr/bin/supervisord