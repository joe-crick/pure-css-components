var stealTools = require("steal-tools");

var promise = stealTools.build({
    main: ["pure-css-components/standalone"],
    config: 'package.json!npm'
  },
  {
    bundleAssets: true
  }
).catch(error => console.log(error));