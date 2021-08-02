const express = require('express');
const morgan = require('morgan');

const app = express();
app.use(morgan('combined'));

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html')
});

app.get('/health', (req, res) => {
 console.log('health check');
//  res.status(200).send();
 res.send('Health check done succesfully. All good...')
 });

var listener = app.listen(process.env.PORT || 80, function() {
 console.log('listening on port ' + listener.address().port);
});
