var stealTools = require("steal-tools");

var buildPromise = stealTools.build({
  config: 'package.json!npm'
}, {
  bundleAssets: true
});

