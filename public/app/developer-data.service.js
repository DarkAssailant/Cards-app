"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core'); //tells that will be injectable by our dependency injector
var http_1 = require('@angular/http');
require('rxjs/add/operator/map');
var DeveloperDataService = (function () {
    function DeveloperDataService(http) {
        this.http = http;
    }
    /*injecting Http as dependency se puede por que el service es
    injectable y puede tener dependencias adicionales*/
    DeveloperDataService.prototype.getDevelopers = function () {
        return this.http.get('app/developer-data.json')
            .map(function (response) { return response.json().data; });
    };
    DeveloperDataService = __decorate([
        core_1.Injectable(), 
        __metadata('design:paramtypes', [http_1.Http])
    ], DeveloperDataService);
    return DeveloperDataService;
}());
exports.DeveloperDataService = DeveloperDataService;
//# sourceMappingURL=developer-data.service.js.map