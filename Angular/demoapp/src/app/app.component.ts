import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  @Output() toggleSideBarForMe: EventEmitter<any>= new EventEmitter();
  title = 'demoapp';
  toggleSideBar(){
    this.toggleSideBarForMe.emit();
  }

}
