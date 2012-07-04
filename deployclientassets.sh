#!/bin/bash
echo "Deploying client assets."
echo "backbone"
cp ./node_modules/backbone/backbone.js ./assets/js/
echo "underscore"
cp ./node_modules/backbone/node_modules/underscore/underscore.js ./assets/js/

