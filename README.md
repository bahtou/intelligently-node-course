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

## Step 1: Using Coffeescript
1. Run 'npm install coffee-script --save'
  * The --save option tells npm to not only install coffee-script but to also add the installed version as a dependency to package.json
2. Open app.js and add 'require('coffee-script');' to the top 

## Step 2: Using Sass
1. Run 'npm install node-sass --save'
2. Open app.js and add:
  ```javascript
  var sass = require('node-sass');
  // In the app.configure block
  app.use(sass.middleware({
      "src" : __dirname + '/assets/',
      "dest" : __dirname + '/public/',
      "debug" : true
  }));
  ```

## Step 3: Authentication
1. You can delete the defined route handlers. We'll be adding our own.
  * Delete 'app.get("/", routes.index);')' in app.js
  * Delete the 'require(routes)' lines as well
2. Replace it with
```javascript
// Pass in app as an argument (instead of using it as a global variable)
require('./apps/authentication/routes')(app)
```
