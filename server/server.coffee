express = require('express')

app = express()

app.configure ->
 app.use(express.logger('dev'))
 app.use(express.bodyParser())
 app.use(express.static('public'))
 app.use(express.cookieParser())

app.listen(process.env.PORT || 5151)