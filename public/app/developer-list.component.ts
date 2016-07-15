import { Component } from '@angular/core';
import { DeveloperDataService } from './developer-data.service'; 

//import { Developer } from './developer'
//no necesitamos agregar el provider por que es un subcomponent

@Component({
  selector: 'developers-list',
  templateUrl: '/app/templates/developers/list.html'
})

export class DeveloperListComponent { 
  devtitle = 'main component';

  constructor(private developerDataService: DeveloperDataService){}
      //private defines propertys bases on attribute
    // will render like this.developerDataService = DeveloperDataService
  
  ngOnInit(){
    
   this.developerDataService.getDevelopers()
     .subscribe( developers => this.developers = developers );
     console.log(this.developers);


   
  }
  
  
}