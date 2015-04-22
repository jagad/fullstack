'use strict';

// Development specific configuration
// ==================================
var host = process.env.MONGODB_PORT_27017_TCP_ADDR || '127.0.0.1';
module.exports = {
  // MongoDB connection options
  mongo: {
    uri: 'mongodb://'+host+'/fullstack-dev'
  },
  seedDB: true
};
