import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template:`<div><h1>Hello Welcome <br/>{{"First Name: " +first_name}} <br/> {{"Last Name: "+last_name}}</h1>
  </div>`
  //<app-employee></app-employee>

  // templateUrl: './app.component.html',
  // styleUrls: ['./app.component.css']
})
export class AppComponent {
  first_name:string ="Suprateem";
  last_name: string = "Bose"
}
