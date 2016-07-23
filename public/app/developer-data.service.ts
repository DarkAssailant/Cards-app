import { Injectable } from '@angular/core' //tells that will be injectable by our dependency injector
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
import { Developer } from './developer';

@Injectable()
export class DeveloperDataService{
  constructor(private http: Http){}
  /*injecting Http as dependency se puede por que el service es
  injectable y puede tener dependencias adicionales*/

  getDevelopers(){
    return this.http.get('./developers.json')
    // .map(response => <Developer[]>response.json().data);
    .map(response => <Developer[]>response.json());
  }

}
