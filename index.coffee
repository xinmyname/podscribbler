app = require('express').createServer()

app.set 'view options', { layout: false }

app.get '/', (req,res) ->
    res.render 'index.jade', { pageTitle: 'Podscribbler' }

app.listen 3000

