import { Component } from '@angular/core';
import { DeveloperDataService } from './developer-data.service'; //ponemos el provider tan arriba a como queramos que tengan acceso
import { DeveloperListComponent } from './developer-list.component';
//ver si tengo que agregar el de http
//import { HTTP_PROVIDERS } from '@angular/http';

@Component({
  selector: 'developers',
  templateUrl: '/app/templates/developers/index.html',
  directives: [DeveloperListComponent],
  providers: [DeveloperDataService]
  
})

export class DeveloperMainComponent { 
  // ngOnInit(){
  //   let developerDataService = new DeveloperDataService();
  // }
}