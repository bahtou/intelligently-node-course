intelligently-node-course
=========================

The Node app I built for my Intelligent.ly class on Full Stack Javascript

1. Install [Node.js and NPM](http://nodejs.org/)
2. Make sure your path can find the node and npm commands by adding export PATH="/usr/local/bin:$PATH" to .profile, .bashrc, etc. If all is good, 'node --version' and 'npm --version' should work
3. Install [Express](http://expressjs.com/) with 'npm install -g express'. 'express --version' should now work
4. Run 'express [project name]' in the directory where you want your project to sit
  * You can delete the routes folder. We won't be using it.
5. In the app directory run 'npm install' to install all dependencies (found in package.json)
6. Start the server with 'npm start' and make sure you can go to http://localhost:3000/
7. Open app.js and add 'require('coffee-script');' to the top (if you want to use Coffeescript)

## Step 1: Authentication
1. You can delete the defined route handlers. We'll be adding our own (so delete 'app.get("/", routes.index);')')
2. Replace it with
```javascript
// Pass in app as an argument (instead of using it as a global variable)
require('./apps/authentication/routes')(app)
```
