fs = require('fs.extra')

throwError = (err) ->
    if err
        throw err

console.log "Deploying client assets."

console.log "backbone"

fs.unlinkSync "./assets/js/backbone.js"
fs.copy "./node_modules/backbone/backbone.js", "./assets/js/backbone.js", throwError

console.log "underscore"

fs.unlinkSync "./assets/js/underscore.js"
fs.copy "./node_modules/backbone/node_modules/underscore/underscore.js", "./assets/js/underscore.js", throwError

