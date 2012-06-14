app = require('express').createServer()

app.use require('connect-assets')()

app.set 'view options', { layout: false }

app.get '/', (req,res) ->
    res.render 'index.jade', { pageTitle: 'Podscribbler' }

port = process.env.PORT || 5000

app.listen port, ->
    console.log "Listening on #{port}"

