const express = require('express');
const app = express();
const port = 3000

app.get('/', (req, res) => {
    res.send('Hello World!')
});

app.listen(port, () => {
    console.log('Hello World app successfully launched on port %s', port)
});
