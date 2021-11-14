import { Component, EventEmitter, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-landing',
  templateUrl: './landing.component.html',
  styleUrls: ['./landing.component.scss']
})
export class LandingComponent implements OnInit {
  constructor() { }
  showFiller = true;
  quote="What’s in a name? A rose by any other name would smell as sweet";
  ngOnInit(): void {
  }
  toggleSideBar(){
    this.showFiller=!this.showFiller;
  }

}
