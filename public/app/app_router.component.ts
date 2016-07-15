import { provideRouter, RouterConfig }  from '@angular/router';
import { HomeComponent } from './home.component';
import { DeveloperMainComponent } from './developer_main.component';
import { AppComponent } from './app.component';

const routes: RouterConfig = [
  // { 
  //   path: '', 
  //   redirectTo: '/home',
  //   pathMatch: 'full'
    
  // },
  { 
    path: '', 
    component: HomeComponent 
    
  },
  { 
    path: 'home', 
    component: HomeComponent 
    
  },
  { 
    path: 'developers', 
    component: DeveloperMainComponent 
    
  },
  { 
    path: 'about', 
    component: DeveloperMainComponent 
    
  }
];


export const APP_ROUTER_PROVIDERS = [
  provideRouter(routes)
];
