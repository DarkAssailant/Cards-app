"use strict";var __decorate=this&&this.__decorate||function(e,t,o,r){var n=arguments.length,a=3>n?t:null===r?r=Object.getOwnPropertyDescriptor(t,o):r,p;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)a=Reflect.decorate(e,t,o,r);else for(var c=e.length-1;c>=0;c--)(p=e[c])&&(a=(3>n?p(a):n>3?p(t,o,a):p(t,o))||a);return n>3&&a&&Object.defineProperty(t,o,a),a},__metadata=this&&this.__metadata||function(e,t){return"object"==typeof Reflect&&"function"==typeof Reflect.metadata?Reflect.metadata(e,t):void 0},core_1=require("@angular/core"),developer_data_service_1=require("./developer-data.service"),developer_list_component_1=require("./developer-list.component"),DeveloperMainComponent=function(){function e(){}return e=__decorate([core_1.Component({selector:"developers",templateUrl:"/app/templates/developers/index.html",directives:[developer_list_component_1.DeveloperListComponent],providers:[developer_data_service_1.DeveloperDataService]}),__metadata("design:paramtypes",[])],e)}();exports.DeveloperMainComponent=DeveloperMainComponent;