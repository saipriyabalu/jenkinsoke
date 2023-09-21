const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

//erve static files (e.g., HTML, CSS, JavaScript) from the "public" directory
app.use(express.static('public'));

// Define a route for the homepage
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
  });

  // Start the server
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
    });

