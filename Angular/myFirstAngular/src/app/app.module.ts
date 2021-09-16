import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { StudentloginComponent } from './student/studentlogin/studentlogin.component';
import { EmployeeComponent } from './employee/employee.component';
import { FormsModule } from '@angular/forms';
import { MytitlePipe } from './mytitle.pipe';


@NgModule({
  declarations: [
    AppComponent,
    EmployeeComponent,
    MytitlePipe
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [EmployeeComponent]
})
export class AppModule { }
