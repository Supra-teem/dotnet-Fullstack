import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LandingComponent } from './landing/landing.component';
import { LoginappComponent } from './loginapp/loginapp.component';

const routes: Routes = [
  { path: '',redirectTo:'login' , pathMatch:'full'},
  {
    path: 'land',
    component: LandingComponent
  },
  {
    path: 'login',
    component: LoginappComponent
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
