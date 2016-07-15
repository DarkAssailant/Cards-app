"use strict";
var platform_browser_dynamic_1 = require('@angular/platform-browser-dynamic');
//import { Component } from '@angular/core';
var app_component_1 = require('./app.component');
var app_router_component_1 = require('./app_router.component');
var http_1 = require('@angular/http');
platform_browser_dynamic_1.bootstrap(app_component_1.AppComponent, [
    app_router_component_1.APP_ROUTER_PROVIDERS, http_1.HTTP_PROVIDERS
]).catch(function (err) { return console.error(err); });
//# sourceMappingURL=main.js.map