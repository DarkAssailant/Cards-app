import { Component } from '@angular/core';
import { ROUTER_DIRECTIVES } from '@angular/router';

@Component({
  selector: 'my-app',
  template: `
    <h1>{{title}}</h1>
    <p>hey</p>
    <a [routerLink]="['/developers']">Developers</a>
    <a [routerLink]="['/about']">About</a>
    <router-outlet></router-outlet>
  `,
  directives: [ROUTER_DIRECTIVES]
})


    
export class AppComponent {
  title = 'main component';
}