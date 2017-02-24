var stealTools = require("steal-tools");

var promise = stealTools.build({
    main: ["src/stand-alone", "src/with-pure"],
    config: 'package.json!npm'
  },
  {
    bundleSteal: false,
    bundleAssets: true
  }
);