/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\r\n\r\nwindow.MovingObject = MovingObject;\r\n\r\n\r\nwindow.addEventListener('DOMContentLoaded', function (){\r\n  let canvasEle = document.getElementById(\"game-canvas\");\r\n  let context = canvasEle.getContext(\"2d\");\r\n\r\n  let circle = new MovingObject({pos: [150,150], vel: [25,25], radius: 50, color: 'red'})\r\n  circle.draw(context);\r\n  circle.move();\r\n  window.circle = circle;\r\n});\n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("function MovingObject (options){\r\n  this.pos = options['pos'];\r\n  this.vel = options['vel'];\r\n  this.radius = options['radius'];\r\n  this.color = options['color'];\r\n}\r\n\r\nMovingObject.prototype.draw = function (ctx){\r\n  ctx.beginPath();\r\n  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI, false);\r\n  ctx.fillStyle = this.color;\r\n  ctx.fill();\r\n}\r\n\r\nMovingObject.prototype.move = function () {\r\n  let canvasEle = document.getElementById(\"game-canvas\");\r\n  let x = canvasEle.width/2;\r\n  let y = canvasEle.height-30;\r\n\r\n  x += this.vel[0];\r\n  y += this.vel[1];\r\n}\r\n\r\nmodule.exports = MovingObject\r\n\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/index.js");
/******/ 	
/******/ })()
;