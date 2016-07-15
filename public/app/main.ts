import { bootstrap }    from '@angular/platform-browser-dynamic';
//import { Component } from '@angular/core';
import { AppComponent } from './app.component';
import { APP_ROUTER_PROVIDERS } from './app_router.component' 
import { HTTP_PROVIDERS } from '@angular/http';
import { ROUTER_DIRECTIVES } from '@angular/router';


bootstrap(AppComponent, [
  APP_ROUTER_PROVIDERS, HTTP_PROVIDERS
]).catch(err => console.error(err));


