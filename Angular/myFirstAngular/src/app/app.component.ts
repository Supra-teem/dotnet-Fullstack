import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template:`<div><h1>Hello Welcome <br/><a href="https://www.mindteck.com">to Mindteck</a>
  </h1>
  <div >
    <label [class]='colorstring'>Name</label> <br/> <br/><input [class]='colorstring' type="text" value={{name}}>
    
  </div>

  <div>
    <h1>Employee Data</h1>
    <table>
      <tr>
          <td>Name</td>
          <td>{{Name}}</td>
      </tr>
      <tr *ngIf='ShowDetails'>
          <td>Dept</td>
          <td>{{Dept}}</td>
      </tr>
      <tr *ngIf='ShowDetails'>
          <td>Mobile</td>
          <td>{{Mobile}}</td>
      </tr>
      <tr *ngIf='ShowDetails'>
          <td>Gender</td>
          <td>{{Gender}}</td>
      </tr>
    </table>
    <button (click)='ToggleDetails()'> {{ShowDetails ? 'Hide' : 'Show'}} Details</button>
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
  colorstring : string= 'bckcolor fontcolor';

  Name:string="Suprateem Bose";
  Dept: string="CSE";
  Mobile: string="8697458524";
  Gender: string="Male";
  onClick(){
    alert("You clicked me");
  }
  ShowDetails:boolean=false;
  ToggleDetails(): void{
    this.ShowDetails=!this.ShowDetails
  }
  //getname() : string {return this.first_name+" "+this.last_name}
}
