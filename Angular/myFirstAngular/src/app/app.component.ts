import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template:`<div><h1>Hello !!!!!! {{pageHeader}}</h1>
    <app-employee></app-employee>
    </div>`

  // templateUrl: './app.component.html',
  // styleUrls: ['./app.component.css']
})
export class AppComponent {
  pageHeader:string ="Employee Details";
}
