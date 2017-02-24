require('gulp-easy')(require('gulp'))
  .config({
    dest: 'dist',
    watch: false
  })
  .less('src/imports.less', 'pure-css-components-alone.min.css', {
    minifycss: {
      compatibility: 'ie9'
    }
  })
  .less('src/with-pure-imports.less', 'pure-css-components-with-pure.css', {
    minifycss: {
      compatibility: 'ie9'
    }
  });