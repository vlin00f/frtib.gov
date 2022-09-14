/* gulpfile.js from https://github.com/uswds/uswds-compile */

//const pkg = require("./node_modules/@uswds/uswds/package.json");
const uswds = require("@uswds/compile");
// const uswds = "./node_modules/@uswds/uswds";
const sass = require("gulp-sass")(require("sass"));

/**
 * USWDS version
 */

uswds.settings.version = 3;

/**
 * Path settings
 * Set as many as you need
 */

// uswds.paths.dist.css = './assets/css';
// uswds.paths.dist.theme = './sass';

// uswds.paths.src.sass	= "./node_modules/@uswds/uswds/packages";

/**
 * Exports
 * Add as many as you need
 */

exports.init = uswds.init;
exports.compile = uswds.compile;
exports.compileSaSS = uswds.compileSaSS;
exports.compileIcons = uswds.compileIcons;
exports.watch = uswds.watch;
