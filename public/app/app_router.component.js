"use strict";
var router_1 = require('@angular/router');
var home_component_1 = require('./home.component');
var developer_main_component_1 = require('./developer_main.component');
var routes = [
    // { 
    //   path: '', 
    //   redirectTo: '/home',
    //   pathMatch: 'full'
    // },
    {
        path: '',
        component: home_component_1.HomeComponent
    },
    {
        path: 'home',
        component: home_component_1.HomeComponent
    },
    {
        path: 'developers',
        component: developer_main_component_1.DeveloperMainComponent
    },
    {
        path: 'about',
        component: developer_main_component_1.DeveloperMainComponent
    }
];
exports.APP_ROUTER_PROVIDERS = [
    router_1.provideRouter(routes)
];
//# sourceMappingURL=app_router.component.js.map