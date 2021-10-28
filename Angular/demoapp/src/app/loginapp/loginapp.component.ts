import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-loginapp',
  templateUrl: './loginapp.component.html',
  styleUrls: ['./loginapp.component.scss']
})
export class LoginappComponent implements OnInit {

  constructor(private router: Router) { 

   }

  ngOnInit(): void {
    
  }
  btnClick() {
    this.router.navigate(['/land']);
  }

}
