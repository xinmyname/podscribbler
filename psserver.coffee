app = require('express').createServer()

app.get '/', (req,res) ->
    res.send "Howdy"

app.listen 3000

