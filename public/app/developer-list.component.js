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
var core_1 = require('@angular/core');
var developer_data_service_1 = require('./developer-data.service');
//import { Developer } from './developer'
//no necesitamos agregar el provider por que es un subcomponent
var DeveloperListComponent = (function () {
    // developers : Developer[] = [
    //   {
    //   "id": 1,
    //   "soid": "lp86056",
    //   "name": "Luis DP"
    //   },
    //   {
    //     "id": 2,
    //     "soid": "lp86055",
    //     "name": "LDP"
    //   },
    //   {
    //     "id": 3,
    //     "soid": "lp86056",
    //     "name": "LDP"
    //   }
    // ];
    function DeveloperListComponent(developerDataService) {
        this.developerDataService = developerDataService;
        this.devtitle = 'main component';
    }
    //private defines propertys bases on attribute
    // will render like this.developerDataService = DeveloperDataService
    DeveloperListComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.developerDataService.getDevelopers()
            .subscribe(function (developers) { return _this.developers = developers; });
        console.log(this.developers);
    };
    DeveloperListComponent = __decorate([
        core_1.Component({
            selector: 'developers-list',
            templateUrl: '/app/templates/developers/list.html'
        }), 
        __metadata('design:paramtypes', [developer_data_service_1.DeveloperDataService])
    ], DeveloperListComponent);
    return DeveloperListComponent;
}());
exports.DeveloperListComponent = DeveloperListComponent;
//# sourceMappingURL=developer-list.component.js.map