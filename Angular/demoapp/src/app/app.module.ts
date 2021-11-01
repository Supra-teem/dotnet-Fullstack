import { NgModule } from '@angular/core';
import { MDBBootstrapModule, MdbBtnDirective, MdbCardBodyComponent, MdbCardComponent } from 'angular-bootstrap-md';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LandingComponent } from './landing/landing.component';
import { LoginappComponent } from './loginapp/loginapp.component';

@NgModule({
  declarations: [
    AppComponent,
    LandingComponent,
    LoginappComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MDBBootstrapModule.forRoot()
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
