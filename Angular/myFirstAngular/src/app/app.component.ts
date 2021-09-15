import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template:`<div><h1>Hello Welcome <br/><a href="https://www.mindteck.com">to Mindteck</a>
  </h1>
  <div>
    <label>Name</label> <input type="text" value={{name}}>
    
  </div>
  </div>`
  
  //<app-employee></app-employee>

  // templateUrl: './app.component.html',
  // styleUrls: ['./app.component.css']
})
export class AppComponent {
  first_name:string ="Suprateem";
  last_name: string = "Bose";
  name : string = "Mindteck";
  //getname() : string {return this.first_name+" "+this.last_name}
}
